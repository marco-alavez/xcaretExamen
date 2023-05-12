/**
 * @Clase       :HttpCalloutredditems
 * @author            : Marco Alavez
 * @group             : Xcaret
 * @last modified on  : 05-12-2023
 * @last modified by  : Marco Alavez
**/
public with sharing class HttpCalloutredditems {
    //Creamos variables staticas para parametros del HTTP
    public static final String URL ='https://www.reddit.com/r/subreddit/new.json?sort=new';
    public static final String GET ='GET';

    /*  Metodo para hacer el llamado del HTTP y guardar datos en Objeto 	reddit_items__c
        Se va ejecutar como apex anonimo desde la consola
    */
    public static List<Reddis_Util.Data> getReddisData(){
        List<Reddis_Util.Data> reddisData = New List<Reddis_Util.Data>();
        List<reddit_items__c> itemsData = New List<reddit_items__c>();

        try {

            Http h = New Http();
            HttpRequest req = New HttpRequest();
            req.setEndpoint(URL);
            req.setMethod(GET);
            req.setTimeout(60000);

            //Ejecutamos solicitud de servicio

            HttpResponse redditResponse = h.send(req);
            Reddis_Util reddtPostResponse = Reddis_Util.parse(redditResponse.getBody());
            List<Reddis_Util.Children> redditPosts = reddtPostResponse.data.children;

            // Iteramos datos hijos y los guardamos en la lista para insertar en Objeto reddit_items__c
            for(Reddis_Util.Children child : redditPosts){
                reddisData.add(child.data);
            }

            // Iniciamos casteo de campos para insertar en el objeto reddit_items__c
            for(Reddis_Util.Data data : reddisData){
                reddit_items__c redditem = new reddit_items__c();
                redditem.subreddit__c = data.subreddit;
                redditem.selftext__c = data.selftext;
                redditem.author_fullname__c = data.author_fullname;
                redditem.saved__c = data.saved;
                redditem.gilded__c = data.gilded;


            }

            System.debug('#### reddisData ' + reddisData);

        } catch (Exception e) {
            System.debug('#### Exception ' + e.getMessage());
        }

        //Ejecutamos una prueba antes de insertar registros para validar que todo se esta ejecutando correctamente

        return reddisData;
    }



}