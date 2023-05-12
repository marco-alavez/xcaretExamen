/************************************************
 *Class : Reddis_Util
 *Fecha de Creación: 12/05/2023
 *Autor: Marco Antonio Alavez Mejia
 *Versión: 0.1
 *Modificación Fecha:
 *
 * *********************************************/
public with sharing class Reddis_Util {

    public String kind;
	public Data_Z data;

	public class Data_Z {
		public String after;
		public Integer dist;
		public String modhash;
		public String geo_filter;
		public List<Children> children;
		public Object before;
	}


	public class Data {
		public Object approved_at_utc;
		public String subreddit;
		public String selftext;
		public String author_fullname;
		public Boolean saved;
		public Object mod_reason_title;
		public Integer gilded;
		public Boolean clicked;
		public String title;
		public List<Link_flair_richtext> link_flair_richtext;
		public String subreddit_name_prefixed;
		public Boolean hidden;
		public Integer pwls;
		public Object link_flair_css_class;
		public Integer downs;
		public Object thumbnail_height;
		public Object top_awarded_type;
		public Boolean hide_score;
		public String name;
		public Boolean quarantine;
		public String link_flair_text_color;
		public Double upvote_ratio;
		public Object author_flair_background_color;
		public String subreddit_type;
		public Integer ups;
		public Integer total_awards_received;
		public Link_flair_richtext media_embed;
		public Object thumbnail_width;
		public Object author_flair_template_id;
		public Boolean is_original_content;
		public List<Link_flair_richtext> user_reports;
		public Object secure_media;
		public Boolean is_reddit_media_domain;
		public Boolean is_meta;
		public Object category;
		public Link_flair_richtext secure_media_embed;
		public Object link_flair_text;
		public Boolean can_mod_post;
		public Integer score;
		public Object approved_by;
		public Boolean is_created_from_ads_ui;
		public Boolean author_premium;
		public String thumbnail;
		public Boolean edited;
		public Object author_flair_css_class;
		public List<Link_flair_richtext> author_flair_richtext;
		public Link_flair_richtext gildings;
		public String post_hint;
		public Object content_categories;
		public Boolean is_self;
		public Object mod_note;
		public Double created;
		public String link_flair_type;
		public Integer wls;
		public Object removed_by_category;
		public Object banned_by;
		public String author_flair_type;
		public String domain;
		public Boolean allow_live_comments;
		public String selftext_html;
		public Object likes;
		public Object suggested_sort;
		public Object banned_at_utc;
		public Object view_count;
		public Boolean archived;
		public Boolean no_follow;
		public Boolean is_crosspostable;
		public Boolean pinned;
		public Boolean over_18;
		public Preview preview;
		public List<Link_flair_richtext> all_awardings;
		public List<Link_flair_richtext> awarders;
		public Boolean media_only;
		public Boolean can_gild;
		public Boolean spoiler;
		public Boolean locked;
		public Object author_flair_text;
		public List<Link_flair_richtext> treatment_tags;
		public Boolean visited;
		public Object removed_by;
		public Object num_reports;
		public Object distinguished;
		public String subreddit_id;
		public Boolean author_is_blocked;
		public Object mod_reason_by;
		public Object removal_reason;
		public String link_flair_background_color;
		public String id;
		public Boolean is_robot_indexable;
		public Object report_reasons;
		public String author;
		public Object discussion_type;
		public Integer num_comments;
		public Boolean send_replies;
		public String whitelist_status;
		public Boolean contest_mode;
		public List<Link_flair_richtext> mod_reports;
		public Boolean author_patreon_flair;
		public Object author_flair_text_color;
		public String permalink;
		public String parent_whitelist_status;
		public Boolean stickied;
		public String url;
		public Integer subreddit_subscribers;
		public Double created_utc;
		public Integer num_crossposts;
		public Object media;
		public Boolean is_video;
	}

	public class Children {
		public String kind;
		public Data data;
	}

	public class Source {
		public String url;
		public Integer width;
		public Integer height;
	}

	public static Reddis_Util parse(String json) {
		return (Reddis_Util) System.JSON.deserialize(json, Reddis_Util.class);
	}
}