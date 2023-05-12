/************************************************
 * Class : Reddis_Util
 * Fecha de Creación: 12/05/2023
 * Autor: Marco Antonio Alavez Mejia
 * Versión: 0.1
 * Modificación Fecha:
 *
 * *********************************************/
public with sharing class Reddis_Util {

	public Reddis data;


    public class Reddis{
        Public List<Children> children;
    }

	public class Data {
		public String subreddit;
		public String selftext;
		public String author_fullname;
		public Boolean saved;
		public Integer gilded;
		public Boolean clicked;
		public String title;
		public String subreddit_name_prefixed;
		public Boolean hidden;
		public Integer pwls;
		public Integer downs;
		public Boolean hide_score;
		public String name;
		public Boolean quarantine;
		public String link_flair_text_color;
		public Double upvote_ratio;
		public String subreddit_type;
		public Integer ups;
		public Integer total_awards_received;
		public Boolean is_original_content;
		public Boolean is_reddit_media_domain;
		public Boolean is_meta;
		public Boolean can_mod_post;
		public Integer score;
		public Boolean is_created_from_ads_ui;
		public Boolean author_premium;
		public String thumbnail;
		public Boolean edited;
		public String post_hint;
		public Boolean is_self;
		public Double created;
		public String link_flair_type;
		public Integer wls;
		public String author_flair_type;
		public String domain;
		public Boolean allow_live_comments;
		public String selftext_html;
		public Object banned_at_utc;
		public Object view_count;
		public Boolean archived;
		public Boolean no_follow;
		public Boolean is_crosspostable;
		public Boolean pinned;
		public Boolean over_18;
		public Boolean media_only;
		public Boolean can_gild;
		public Boolean spoiler;
		public Boolean locked;
		public Boolean visited;
		public Object removed_by;
		public String subreddit_id;
		public Boolean author_is_blocked;
		public String link_flair_background_color;
		public String id;
		public Boolean is_robot_indexable;
		public String author;
		public Integer num_comments;
		public Boolean send_replies;
		public String whitelist_status;
		public Boolean contest_mode;
		public Boolean author_patreon_flair;
		public String permalink;
		public String parent_whitelist_status;
		public Boolean stickied;
		public String url;
		public Integer subreddit_subscribers;
		public Double created_utc;
		public Integer num_crossposts;
		public Boolean is_video;
	}

	public class Children {
		public Data data;
	}

	public static Reddis_Util parse(String json) {
		return (Reddis_Util) System.JSON.deserialize(json, Reddis_Util.class);
	}
}