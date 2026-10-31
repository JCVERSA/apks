# Update candidates

Static search evidence. A hit does not establish runtime execution.

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:1995 (update_general; file score 60)

```java
  1989:     move-result-object v0
  1990: 
  1991:     invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
  1992: 
  1993:     move-result-object v0
  1994: 
  1995:     const-string v1, "key_copy_version_code "
  1996: 
  1997:     invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  1998: 
  1999:     invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->Q6(Landroid/content/SharedPreferences$Editor;)V
  2000: 
  2001:     return-void
  2002: .end method
  2003: 
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:3448 (update_general; file score 60)

```java
  3442:     .locals 3
  3443: 
  3444:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;
  3445: 
  3446:     move-result-object v0
  3447: 
  3448:     const-string v1, "key.current_version_code"
  3449: 
  3450:     const/4 v2, -0x1
  3451: 
  3452:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
  3453: 
  3454:     move-result v0
  3455: 
  3456:     invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:3506 (update_general; file score 60)

```java
  3500:     .locals 5
  3501: 
  3502:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;
  3503: 
  3504:     move-result-object v0
  3505: 
  3506:     const-string v1, "key.current_version_code"
  3507: 
  3508:     const/4 v2, -0x1
  3509: 
  3510:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
  3511: 
  3512:     move-result v0
  3513: 
  3514:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->u3()Z
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:3541 (update_general; file score 60)

```java
  3535:     move-result-object v3
  3536: 
  3537:     invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
  3538: 
  3539:     move-result-object v3
  3540: 
  3541:     const-string v4, "key.last_version_code"
  3542: 
  3543:     invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  3544: 
  3545:     invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  3546: 
  3547:     invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
  3548: 
  3549:     return-void
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:4786 (update_general; file score 60)

```java
  4780:     move-result-object v0
  4781: 
  4782:     invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
  4783: 
  4784:     move-result-object v0
  4785: 
  4786:     const-string v1, "install_version_code"
  4787: 
  4788:     invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  4789: 
  4790:     move-result-object p0
  4791: 
  4792:     invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
  4793: 
  4794:     return-void
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:4916 (update_general; file score 60)

```java
  4910:     .locals 3
  4911: 
  4912:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->i1()Landroid/content/SharedPreferences;
  4913: 
  4914:     move-result-object v0
  4915: 
  4916:     const-string v1, "key.enable_app_upgrade_download_in_wifi_prefer"
  4917: 
  4918:     const/4 v2, 0x0
  4919: 
  4920:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
  4921: 
  4922:     move-result v0
  4923: 
  4924:     return v0
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:5895 (update_general; file score 60)

```java
  5889:     .locals 3
  5890: 
  5891:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;
  5892: 
  5893:     move-result-object v0
  5894: 
  5895:     const-string v1, "install_version_code"
  5896: 
  5897:     const/4 v2, -0x1
  5898: 
  5899:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
  5900: 
  5901:     move-result v0
  5902: 
  5903:     return v0
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:7041 (update_general; file score 60)

```java
  7035:     move-result-object v0
  7036: 
  7037:     invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
  7038: 
  7039:     move-result-object v0
  7040: 
  7041:     const-string v1, "key.record_version_code"
  7042: 
  7043:     invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  7044: 
  7045:     move-result-object p0
  7046: 
  7047:     invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
  7048: 
  7049:     return-void
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:9129 (update_general; file score 60)

```java
  9123:     .locals 3
  9124: 
  9125:     invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;
  9126: 
  9127:     move-result-object v0
  9128: 
  9129:     const-string v1, "key.record_version_code"
  9130: 
  9131:     const/4 v2, 0x0
  9132: 
  9133:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
  9134: 
  9135:     move-result v0
  9136: 
  9137:     return v0
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:9189 (update_strong; file score 60)

```java
  9183:     .locals 3
  9184: 
  9185:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->i1()Landroid/content/SharedPreferences;
  9186: 
  9187:     move-result-object v0
  9188: 
  9189:     const-string v1, "key.pop_upgrade_dialog_directly"
  9190: 
  9191:     const/4 v2, 0x1
  9192: 
  9193:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
  9194: 
  9195:     move-result v0
  9196: 
  9197:     return v0
```

## decoded/smali_classes4/com/snaptube/premium/configs/Config.smali:9259 (update_general; file score 60)

```java
  9253:     .locals 3
  9254: 
  9255:     invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;
  9256: 
  9257:     move-result-object v0
  9258: 
  9259:     const-string v1, "key_copy_version_code "
  9260: 
  9261:     const/4 v2, -0x1
  9262: 
  9263:     invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
  9264: 
  9265:     move-result v0
  9266: 
  9267:     return v0
```

## jadx/sources/com/snaptube/premium/R.java:3970 (update_strong; file score 60)

```java
  3964:         public static final int apptheme_scrubber_primary_holo = 0x7f0800b5;
  3965:         public static final int apptheme_scrubber_progress_horizontal_holo_light = 0x7f0800b6;
  3966:         public static final int apptheme_scrubber_secondary_holo = 0x7f0800b7;
  3967:         public static final int apptheme_scrubber_track_holo_light = 0x7f0800b8;
  3968:         public static final int audio_cover_shadow = 0x7f0800b9;
  3969:         public static final int background_play_permission = 0x7f0800bc;
  3970:         public static final int bg_about_inner_new_version_background = 0x7f0800bd;
  3971:         public static final int bg_artwork_shadow = 0x7f0800c3;
  3972:         public static final int bg_audio_play_circle = 0x7f0800c4;
  3973:         public static final int bg_back_campaign = 0x7f0800c5;
  3974:         public static final int bg_bookmark_item = 0x7f0800d1;
  3975:         public static final int bg_card_button_drawable_selector_home = 0x7f0800e4;
  3976:         public static final int bg_category_card_pressed = 0x7f0800e5;
  3977:         public static final int bg_clean_cache = 0x7f0800eb;
  3978:         public static final int bg_clean_round_selector = 0x7f0800ed;
```

## jadx/sources/com/snaptube/premium/R.java:4026 (update_strong; file score 60)

```java
  4020:         public static final int bg_tab_badge = 0x7f080155;
  4021:         public static final int bg_tab_corner = 0x7f080156;
  4022:         public static final int bg_tab_corner_incognito = 0x7f080157;
  4023:         public static final int bg_tab_selected = 0x7f080159;
  4024:         public static final int bg_text_button_normal = 0x7f08015a;
  4025:         public static final int bg_update_text = 0x7f08015c;
  4026:         public static final int bg_upgrade_dialog_background = 0x7f08015d;
  4027:         public static final int bg_white_round_corner_4dp = 0x7f080162;
  4028:         public static final int bg_ytb_comment_input = 0x7f080163;
  4029:         public static final int bookmark_icon_placeholder = 0x7f080165;
  4030:         public static final int btn_blue_round_corner = 0x7f08016d;
  4031:         public static final int btn_controller_next_normal = 0x7f080174;
  4032:         public static final int btn_controller_next_press = 0x7f080175;
  4033:         public static final int btn_controller_pause_normal = 0x7f080176;
  4034:         public static final int btn_controller_pause_press = 0x7f080177;
```

## jadx/sources/com/snaptube/premium/R.java:4074 (update_general; file score 60)

```java
  4068:         public static final int header_player_guide_lark_player_choose_format = 0x7f080208;
  4069:         public static final int holder_music_cover = 0x7f080209;
  4070:         public static final int how_to_use_1 = 0x7f08020a;
  4071:         public static final int how_to_use_2 = 0x7f08020b;
  4072:         public static final int how_to_use_3 = 0x7f08020c;
  4073:         public static final int ic_ad_tag = 0x7f080210;
  4074:         public static final int ic_app_update_rect = 0x7f08022a;
  4075:         public static final int ic_avatar_bg = 0x7f08023d;
  4076:         public static final int ic_back_campaign = 0x7f08023e;
  4077:         public static final int ic_bg = 0x7f08024c;
  4078:         public static final int ic_bookmark_empty = 0x7f080250;
  4079:         public static final int ic_button = 0x7f080258;
  4080:         public static final int ic_cancel = 0x7f08025a;
  4081:         public static final int ic_cancel_normal = 0x7f08025c;
  4082:         public static final int ic_cancel_pressed = 0x7f08025d;
```

## jadx/sources/com/snaptube/premium/R.java:4094 (update_strong; file score 60)

```java
  4088:         public static final int ic_download_old = 0x7f0802bf;
  4089:         public static final int ic_downloaded_popup_lark_logo = 0x7f0802c6;
  4090:         public static final int ic_downloaded_popup_larkbrowser = 0x7f0802c7;
  4091:         public static final int ic_explore_end = 0x7f0802d1;
  4092:         public static final int ic_file_banner_close = 0x7f0802e2;
  4093:         public static final int ic_file_broken = 0x7f0802e3;
  4094:         public static final int ic_force_upgrade = 0x7f0802f6;
  4095:         public static final int ic_fullscreen_comment = 0x7f0802f8;
  4096:         public static final int ic_gender_selected = 0x7f0802fa;
  4097:         public static final int ic_gender_unselected = 0x7f0802fb;
  4098:         public static final int ic_guide1_item_1 = 0x7f080300;
  4099:         public static final int ic_guide1_item_2 = 0x7f080301;
  4100:         public static final int ic_guide1_item_3 = 0x7f080302;
  4101:         public static final int ic_guide1_item_4 = 0x7f080303;
  4102:         public static final int ic_guide1_item_5 = 0x7f080304;
```

## jadx/sources/com/snaptube/premium/R.java:4181 (update_strong; file score 60)

```java
  4175:         public static final int ic_star_border = 0x7f080454;
  4176:         public static final int ic_star_solid = 0x7f080459;
  4177:         public static final int ic_tip_fetchfailed = 0x7f080478;
  4178:         public static final int ic_tip_fetchfailed_normal = 0x7f080479;
  4179:         public static final int ic_tip_fetchfailed_pressed = 0x7f08047a;
  4180:         public static final int ic_tips_toolsbar = 0x7f08047b;
  4181:         public static final int ic_upgrade_dialog_top_bg = 0x7f08048e;
  4182:         public static final int ic_video_placeholder = 0x7f0804a4;
  4183:         public static final int ic_video_seekbar_thumb_normal = 0x7f0804a6;
  4184:         public static final int ic_video_seekbar_thumb_press = 0x7f0804a7;
  4185:         public static final int ic_youtube_banner = 0x7f0804bb;
  4186:         public static final int icn_snaptube = 0x7f0804c5;
  4187:         public static final int icon_default_avatar = 0x7f0804d5;
  4188:         public static final int icon_music_info_play = 0x7f0804d8;
  4189:         public static final int icon_next_song_white = 0x7f0804d9;
```

## jadx/sources/com/snaptube/premium/R.java:7022 (update_strong; file score 60)

```java
  7016:         public static final int mask = 0x7f090552;
  7017:         public static final int mask_view = 0x7f090553;
  7018:         public static final int maybeLater = 0x7f090568;
  7019:         public static final int me_about_bottom_container = 0x7f09060b;
  7020:         public static final int me_about_feature_group = 0x7f09060c;
  7021:         public static final int me_about_mid_container = 0x7f09060d;
  7022:         public static final int me_about_new_version = 0x7f09060e;
  7023:         public static final int me_about_text = 0x7f09060f;
  7024:         public static final int me_about_top_container = 0x7f090610;
  7025:         public static final int me_about_up_to_date = 0x7f090611;
  7026:         public static final int me_about_upgrade_group = 0x7f090612;
  7027:         public static final int media_controller_container = 0x7f090617;
  7028:         public static final int media_item_list_tag = 0x7f090619;
  7029:         public static final int mediation_test_title = 0x7f09061d;
  7030:         public static final int menu_add = 0x7f090620;
```

## jadx/sources/com/snaptube/premium/R.java:10222 (update_strong; file score 60)

```java
 10216:         public static final int activity_common_content = 0x7f0c002d;
 10217:         public static final int activity_common_mixed_list = 0x7f0c002e;
 10218:         public static final int activity_common_web = 0x7f0c002f;
 10219:         public static final int activity_content_container = 0x7f0c0030;
 10220:         public static final int activity_credits = 0x7f0c0031;
 10221:         public static final int activity_deeplink = 0x7f0c0032;
 10222:         public static final int activity_force_upgrade = 0x7f0c0034;
 10223:         public static final int activity_fragment_container = 0x7f0c0035;
 10224:         public static final int activity_gallery = 0x7f0c0037;
 10225:         public static final int activity_gp_install_tip = 0x7f0c0038;
 10226:         public static final int activity_history = 0x7f0c003c;
 10227:         public static final int activity_image_preview = 0x7f0c003d;
 10228:         public static final int activity_install_guide_overlay = 0x7f0c003e;
 10229:         public static final int activity_launch_guide = 0x7f0c003f;
 10230:         public static final int activity_local_search = 0x7f0c0040;
```

## jadx/sources/com/snaptube/premium/R.java:10570 (update_strong; file score 60)

```java
 10564:         public static final int speeddial_sites_item = 0x7f0c0380;
 10565:         public static final int suggestion_item = 0x7f0c0384;
 10566:         public static final int suggestion_site = 0x7f0c0385;
 10567:         public static final int tab_view = 0x7f0c0388;
 10568:         public static final int task_card_downloading_new = 0x7f0c0389;
 10569:         public static final int top_vpn_view = 0x7f0c039c;
 10570:         public static final int upgrade_dialog = 0x7f0c039d;
 10571:         public static final int upgrade_normal_dialog_layout = 0x7f0c039e;
 10572:         public static final int video_button_bar_transparent = 0x7f0c039f;
 10573:         public static final int video_button_bar_ytb = 0x7f0c03a0;
 10574:         public static final int video_player_controller = 0x7f0c03a3;
 10575:         public static final int video_webview_container_layout = 0x7f0c03a6;
 10576:         public static final int video_webview_layout = 0x7f0c03a7;
 10577:         public static final int view_badget_count_image = 0x7f0c03aa;
 10578:         public static final int view_content_update_tips = 0x7f0c03ac;
```

## jadx/sources/com/snaptube/premium/R.java:12251 (update_strong; file score 60)

```java
 12245:         public static final int cleaner_dialog_hint = 0x7f11012f;
 12246:         public static final int cleaner_dialog_tittle = 0x7f110130;
 12247:         public static final int cleaner_notificaiton = 0x7f110131;
 12248:         public static final int cleaner_result_cleaned_hint = 0x7f110132;
 12249:         public static final int cleaner_toast_to_gp = 0x7f110133;
 12250:         public static final int cleaner_toast_with_apk = 0x7f110134;
 12251:         public static final int cleaner_upgrade_dialog_tip = 0x7f110135;
 12252:         public static final int cleaning = 0x7f110136;
 12253:         public static final int clear_browser_history = 0x7f110137;
 12254:         public static final int clear_button = 0x7f110138;
 12255:         public static final int clear_history = 0x7f110139;
 12256:         public static final int clear_text_end_icon_content_description = 0x7f11013a;
 12257:         public static final int click_gray_download_btn_prompt = 0x7f11013b;
 12258:         public static final int click_more = 0x7f11013c;
 12259:         public static final int click_share_again = 0x7f11013d;
```

## jadx/sources/com/snaptube/premium/R.java:12668 (update_strong; file score 60)

```java
 12662:         public static final int follow = 0x7f1102d4;
 12663:         public static final int follow_back = 0x7f1102d5;
 12664:         public static final int follow_snaptube_fb = 0x7f1102d6;
 12665:         public static final int follow_snaptube_ins = 0x7f1102d7;
 12666:         public static final int follow_snaptube_tips2 = 0x7f1102d8;
 12667:         public static final int following = 0x7f1102d9;
 12668:         public static final int force_update_subtitle = 0x7f1102da;
 12669:         public static final int force_update_title = 0x7f1102db;
 12670:         public static final int force_update_toast_download_link = 0x7f1102dc;
 12671:         public static final int force_upgrade_dialog_title = 0x7f1102dd;
 12672:         public static final int forget_password = 0x7f1102de;
 12673:         public static final int format_hint_invalid_path = 0x7f1102df;
 12674:         public static final int format_loaded_count = 0x7f1102e0;
 12675:         public static final int format_used = 0x7f1102e1;
 12676:         public static final int forward_to_wa = 0x7f1102e2;
```

## jadx/sources/com/snaptube/premium/R.java:12670 (update_strong; file score 60)

```java
 12664:         public static final int follow_snaptube_fb = 0x7f1102d6;
 12665:         public static final int follow_snaptube_ins = 0x7f1102d7;
 12666:         public static final int follow_snaptube_tips2 = 0x7f1102d8;
 12667:         public static final int following = 0x7f1102d9;
 12668:         public static final int force_update_subtitle = 0x7f1102da;
 12669:         public static final int force_update_title = 0x7f1102db;
 12670:         public static final int force_update_toast_download_link = 0x7f1102dc;
 12671:         public static final int force_upgrade_dialog_title = 0x7f1102dd;
 12672:         public static final int forget_password = 0x7f1102de;
 12673:         public static final int format_hint_invalid_path = 0x7f1102df;
 12674:         public static final int format_loaded_count = 0x7f1102e0;
 12675:         public static final int format_used = 0x7f1102e1;
 12676:         public static final int forward_to_wa = 0x7f1102e2;
 12677:         public static final int download_notification_view = 0x7f1102e3;
 12678:         public static final int fragment_playback_holder = 0x7f1102e4;
```

## jadx/sources/com/snaptube/premium/R.java:12756 (update_strong; file score 60)

```java
 12750:         public static final int install_no_enough_storage = 0x7f110334;
 12751:         public static final int install_tips_title = 0x7f110335;
 12752:         public static final int install_to_play = 0x7f110336;
 12753:         public static final int install_webview_from_google_play = 0x7f110337;
 12754:         public static final int installed = 0x7f110338;
 12755:         public static final int installing_app = 0x7f110339;
 12756:         public static final int intent_upgrade_dialog_message = 0x7f11033a;
 12757:         public static final int intercom_access_photos = 0x7f11033b;
 12758:         public static final int intercom_allow_access = 0x7f11033c;
 12759:         public static final int intercom_allow_storage_access = 0x7f11033d;
 12760:         public static final int intercom_app_settings = 0x7f11033e;
 12761:         public static final int intercom_composer_send = 0x7f11033f;
 12762:         public static final int intercom_composer_tap_to_send = 0x7f110340;
 12763:         public static final int intercom_go_to_device_settings = 0x7f110341;
 12764:         public static final int intercom_not_now = 0x7f110342;
```

## jadx/sources/com/snaptube/premium/R.java:13354 (update_strong; file score 60)

```java
 13348:         public static final int set_as_default = 0x7f110593;
 13349:         public static final int set_email_success = 0x7f110594;
 13350:         public static final int setting_apk_location = 0x7f110595;
 13351:         public static final int setting_category_download = 0x7f110596;
 13352:         public static final int setting_category_feedback = 0x7f110597;
 13353:         public static final int setting_category_others = 0x7f110598;
 13354:         public static final int setting_dialog_already_new_version = 0x7f110599;
 13355:         public static final int setting_dialog_checking_update = 0x7f11059a;
 13356:         public static final int setting_dialog_content_update = 0x7f11059b;
 13357:         public static final int setting_download_data = 0x7f11059c;
 13358:         public static final int setting_download_data_desc = 0x7f11059d;
 13359:         public static final int setting_download_progress_desc = 0x7f11059e;
 13360:         public static final int setting_download_task = 0x7f11059f;
 13361:         public static final int setting_floating_window_desc = 0x7f1105a0;
 13362:         public static final int setting_label = 0x7f1105a1;
```

## jadx/sources/com/snaptube/premium/R.java:14730 (update_strong; file score 60)

```java
 14724:         public static final int P4_Theme_CustomActionBar = 0x7f120193;
 14725:         public static final int P4_Theme_CustomActionBar_OverlayWithBg = 0x7f120194;
 14726:         public static final int P4_Theme_Detail = 0x7f120195;
 14727:         public static final int P4_Theme_DetailNoTranslucent = 0x7f120196;
 14728:         public static final int P4_Theme_DownloadRecommended = 0x7f120197;
 14729:         public static final int P4_Theme_Feedback = 0x7f120198;
 14730:         public static final int P4_Theme_ForceUpdate = 0x7f120199;
 14731:         public static final int P4_Theme_HomeIndicatorActionBar = 0x7f12019a;
 14732:         public static final int P4_Theme_ImmersiveVideoDetailActivity = 0x7f12019b;
 14733:         public static final int P4_Theme_Login = 0x7f12019c;
 14734:         public static final int P4_Theme_MyThings = 0x7f12019d;
 14735:         public static final int P4_Theme_NoActionBar = 0x7f12019e;
 14736:         public static final int P4_Theme_NoActionBar_MusicPlay = 0x7f12019f;
 14737:         public static final int P4_Theme_NonTranslucentActionBar = 0x7f1201a0;
 14738:         public static final int P4_Theme_Overlay = 0x7f1201a1;
```

## jadx/sources/com/snaptube/premium/configs/Config.java:503 (update_general; file score 60)

```java
   497:     public static boolean L4() {
   498:         return i1().getBoolean("key.youtube_mock_320k_mp3_enable", false);
   499:     }
   500: 
   501:     public static void L5(int i2) {
   502:         SharedPreferences.Editor editorEdit = b0().edit();
   503:         editorEdit.putInt("key_copy_version_code ", i2);
   504:         Q6(editorEdit);
   505:     }
   506: 
   507:     public static boolean L6() {
   508:         return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ignore_gms_crash", true);
   509:     }
   510: 
   511:     public static int M() {
```

## jadx/sources/com/snaptube/premium/configs/Config.java:822 (update_general; file score 60)

```java
   816:             return true;
   817:         }
   818:         return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.judge_space_before_convert_enable", true);
   819:     }
   820: 
   821:     public static boolean S4() {
   822:         return az7.P(GlobalConfig.getAppContext()) != b0().getInt("key.current_version_code", -1);
   823:     }
   824: 
   825:     public static void S5(long j2) {
   826:         b0().edit().putLong("key.latest_song_silent_download_mills", j2).apply();
   827:     }
   828: 
   829:     public static void S6() {
   830:         int i2 = b0().getInt("key.current_version_code", -1);
```

## jadx/sources/com/snaptube/premium/configs/Config.java:830 (update_general; file score 60)

```java
   824: 
   825:     public static void S5(long j2) {
   826:         b0().edit().putLong("key.latest_song_silent_download_mills", j2).apply();
   827:     }
   828: 
   829:     public static void S6() {
   830:         int i2 = b0().getInt("key.current_version_code", -1);
   831:         if (!u3() && i2 == -1) {
   832:             i2 = 0;
   833:         }
   834:         int iP = az7.P(GlobalConfig.getAppContext());
   835:         SharedPreferences.Editor editorEdit = b0().edit();
   836:         editorEdit.putInt("key.last_version_code", i2);
   837:         editorEdit.putInt("key.current_version_code", iP);
   838:         editorEdit.apply();
```

## jadx/sources/com/snaptube/premium/configs/Config.java:1089 (update_general; file score 60)

```java
  1083: 
  1084:     public static boolean Z3() {
  1085:         return i1().getBoolean("key.is_pre_extract_reuse_enabled", true);
  1086:     }
  1087: 
  1088:     public static void Z4(int i2) {
  1089:         b0().edit().putInt("install_version_code", i2).apply();
  1090:     }
  1091: 
  1092:     public static void Z5(boolean z) {
  1093:         b0().edit().putBoolean("is_mini_bar_hide_by_local_play", z).apply();
  1094:     }
  1095: 
  1096:     public static void a() {
  1097:         U5(I0() + 1);
```

## jadx/sources/com/snaptube/premium/configs/Config.java:1117 (update_general; file score 60)

```java
  1111: 
  1112:     public static boolean a3() {
  1113:         return i1().getBoolean("key.check_allocatable_bytes_before_install", true);
  1114:     }
  1115: 
  1116:     public static boolean a4() {
  1117:         return i1().getBoolean("key.enable_app_upgrade_download_in_wifi_prefer", false);
  1118:     }
  1119: 
  1120:     public static void a5(long j2) {
  1121:         b0().edit().putLong("key.last_app_uninstallsurvey_show_time", j2).apply();
  1122:     }
  1123: 
  1124:     public static void a6(boolean z) {
  1125:         b0().edit().putBoolean("is_mini_bar_show", z).apply();
```

## jadx/sources/com/snaptube/premium/configs/Config.java:1318 (update_general; file score 60)

```java
  1312: 
  1313:     public static boolean f() {
  1314:         return i1().getBoolean("key.check_is_family_safe_before_push", false);
  1315:     }
  1316: 
  1317:     public static int f0() {
  1318:         return b0().getInt("install_version_code", -1);
  1319:     }
  1320: 
  1321:     public static boolean f1(String str, boolean z) {
  1322:         Context appContext = PluginContextUtil.getAppContext();
  1323:         return appContext == null ? z : appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean(str, z);
  1324:     }
  1325: 
  1326:     public static boolean f2() {
```

## jadx/sources/com/snaptube/premium/configs/Config.java:1564 (update_general; file score 60)

```java
  1558:         SharedPreferences.Editor editorEdit = b0().edit();
  1559:         editorEdit.putString("KEY_LOCATION_CODE", str);
  1560:         Q6(editorEdit);
  1561:     }
  1562: 
  1563:     public static void l6(int i2) {
  1564:         GlobalConfig.getGenericSharedPrefs().edit().putInt("key.record_version_code", i2).apply();
  1565:     }
  1566: 
  1567:     public static Regex m() {
  1568:         try {
  1569:             return new Regex(h1("key.adult_website", ""));
  1570:         } catch (Exception unused) {
  1571:             return new Regex("https?://.*\\.(pornhub|xvideos|xnxx)\\..*");
  1572:         }
```

## jadx/sources/com/snaptube/premium/configs/Config.java:2002 (update_general; file score 60)

```java
  1996: 
  1997:     public static long x0() {
  1998:         return b0().getLong("key_copy_time ", -1L);
  1999:     }
  2000: 
  2001:     public static int x1() {
  2002:         return GlobalConfig.getGenericSharedPrefs().getInt("key.record_version_code", 0);
  2003:     }
  2004: 
  2005:     public static String x2() {
  2006:         return b0().getString(GlobalConfig.KEY_LANGUAGE_CODE_YOUTUBE, LanguageListFragment.c3().getLanguage());
  2007:     }
  2008: 
  2009:     public static boolean x3() {
  2010:         return i1().getBoolean("key.is_ignore_profile_date_limit_enabled", true);
```

## jadx/sources/com/snaptube/premium/configs/Config.java:2014 (update_strong; file score 60)

```java
  2008: 
  2009:     public static boolean x3() {
  2010:         return i1().getBoolean("key.is_ignore_profile_date_limit_enabled", true);
  2011:     }
  2012: 
  2013:     public static boolean x4() {
  2014:         return i1().getBoolean("key.pop_upgrade_dialog_directly", true);
  2015:     }
  2016: 
  2017:     public static void x5() {
  2018:         Y4("key.has_scan_download_media", true);
  2019:     }
  2020: 
  2021:     public static void x6(boolean z) {
  2022:         b0().edit().putBoolean("KEY_USER_MOBILE_NET_DOWN_FFMPEG_PLUGIN_ENABLE", z).apply();
```

## jadx/sources/com/snaptube/premium/configs/Config.java:2030 (update_general; file score 60)

```java
  2024: 
  2025:     public static int y() {
  2026:         return e1().getInt("key.new_clean_insufficient_dialog_total_count", 1);
  2027:     }
  2028: 
  2029:     public static int y0() {
  2030:         return b0().getInt("key_copy_version_code ", -1);
  2031:     }
  2032: 
  2033:     public static long y1() {
  2034:         return ((long) e1().getInt("key.retry_check_plugin_duration", 1)) * 3600000;
  2035:     }
  2036: 
  2037:     public static String y2() {
  2038:         return h1("key.youtube_home_web_url", null);
```

## jadx/sources/com/snaptube/premium/activity/ExploreActivity.java:46 (update_strong; file score 56)

```java
    40: import com.snaptube.premium.activate.ActivatePos;
    41: import com.snaptube.premium.ads.SplashAdManager;
    42: import com.snaptube.premium.app.PhoenixApplication;
    43: import com.snaptube.premium.clean.CleanForegroundWatcher;
    44: import com.snaptube.premium.configs.Config;
    45: import com.snaptube.premium.deeplink.FirebaseDynamicLinkChecker;
    46: import com.snaptube.premium.dialog.UpgradeDialog;
    47: import com.snaptube.premium.dialog.coordinator.IPopElement;
    48: import com.snaptube.premium.dialog.coordinator.PopCoordinator;
    49: import com.snaptube.premium.dialog.coordinator.element.CopyLinkPopElement;
    50: import com.snaptube.premium.dialog.coordinator.element.UpgradePopElement;
    51: import com.snaptube.premium.fragment.HomePageFragment;
    52: import com.snaptube.premium.fragment.TabHostFragment;
    53: import com.snaptube.premium.fragment.discoveryyoutube.BottomTabConfig;
    54: import com.snaptube.premium.log.AppStartRecorder;
```

## jadx/sources/com/snaptube/premium/activity/ExploreActivity.java:1093 (update_strong; file score 56)

```java
  1087:             return true;
  1088:         }
  1089:         if ("snaptube.intent.action.ACTION_EXIT_PROCESS".equals(action)) {
  1090:             System.exit(0);
  1091:             return true;
  1092:         }
  1093:         if ("snaptube.intent.action.SHOW_UPGRADE_DIALOG".equals(action)) {
  1094:             x2(intent.toUri(1));
  1095:             return true;
  1096:         }
  1097:         if ("phoenix.intent.action.SEARCH_TAB_NAVIGATE".equals(action)) {
  1098:             W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_DOWNLOAD));
  1099:             return true;
  1100:         }
  1101:         if ("phoenix.intent.action.MY_THINGS_NAVIGATE".equals(action)) {
```

## jadx/sources/com/snaptube/premium/activity/ExploreActivity.java:1283 (update_strong; file score 56)

```java
  1277:             }
  1278:             this.h = new or4(linkedList);
  1279:         }
  1280:     }
  1281: 
  1282:     public final void x2(String str) {
  1283:         new UpgradeDialog().E2(getSupportFragmentManager());
  1284:         CheckSelfUpgradeManager.U(str);
  1285:     }
  1286: 
  1287:     public final void y2(Bundle bundle) {
  1288:         ProductionEnv.debugLog(F, "current region: " + g86.c(this));
  1289:         t2();
  1290:         q1(getIntent(), bundle != null);
  1291:         U1(null);
```

## decoded/smali_classes2/com/snaptube/premium/R$id.smali:1276 (update_strong; file score 52)

```java
  1270: .field public static final me_about_bottom_container:I = 0x7f09060b
  1271: 
  1272: .field public static final me_about_feature_group:I = 0x7f09060c
  1273: 
  1274: .field public static final me_about_mid_container:I = 0x7f09060d
  1275: 
  1276: .field public static final me_about_new_version:I = 0x7f09060e
  1277: 
  1278: .field public static final me_about_text:I = 0x7f09060f
  1279: 
  1280: .field public static final me_about_top_container:I = 0x7f090610
  1281: 
  1282: .field public static final me_about_up_to_date:I = 0x7f090611
  1283: 
  1284: .field public static final me_about_upgrade_group:I = 0x7f090612
```

## decoded/smali_classes2/com/snaptube/premium/R$layout.smali:44 (update_strong; file score 52)

```java
    38: .field public static final activity_content_container:I = 0x7f0c0030
    39: 
    40: .field public static final activity_credits:I = 0x7f0c0031
    41: 
    42: .field public static final activity_deeplink:I = 0x7f0c0032
    43: 
    44: .field public static final activity_force_upgrade:I = 0x7f0c0034
    45: 
    46: .field public static final activity_fragment_container:I = 0x7f0c0035
    47: 
    48: .field public static final activity_gallery:I = 0x7f0c0037
    49: 
    50: .field public static final activity_gp_install_tip:I = 0x7f0c0038
    51: 
    52: .field public static final activity_history:I = 0x7f0c003c
```

## decoded/smali_classes2/com/snaptube/premium/R$layout.smali:740 (update_strong; file score 52)

```java
   734: .field public static final tab_view:I = 0x7f0c0388
   735: 
   736: .field public static final task_card_downloading_new:I = 0x7f0c0389
   737: 
   738: .field public static final top_vpn_view:I = 0x7f0c039c
   739: 
   740: .field public static final upgrade_dialog:I = 0x7f0c039d
   741: 
   742: .field public static final upgrade_normal_dialog_layout:I = 0x7f0c039e
   743: 
   744: .field public static final video_button_bar_transparent:I = 0x7f0c039f
   745: 
   746: .field public static final video_button_bar_ytb:I = 0x7f0c03a0
   747: 
   748: .field public static final video_player_controller:I = 0x7f0c03a3
```

## decoded/smali_classes4/com/snaptube/premium/activity/ExploreActivity.smali:3126 (update_strong; file score 52)

```java
  3120: 
  3121:     invoke-static {v1}, Ljava/lang/System;->exit(I)V
  3122: 
  3123:     return v8
  3124: 
  3125:     :cond_b
  3126:     const-string v3, "snaptube.intent.action.SHOW_UPGRADE_DIALOG"
  3127: 
  3128:     invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
  3129: 
  3130:     move-result v3
  3131: 
  3132:     if-eqz v3, :cond_c
  3133: 
  3134:     invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;
```

## decoded/smali_classes4/com/snaptube/premium/activity/ExploreActivity.smali:3948 (update_strong; file score 52)

```java
  3942:     return-void
  3943: .end method
  3944: 
  3945: .method public final x2(Ljava/lang/String;)V
  3946:     .locals 2
  3947: 
  3948:     new-instance v0, Lcom/snaptube/premium/dialog/UpgradeDialog;
  3949: 
  3950:     invoke-direct {v0}, Lcom/snaptube/premium/dialog/UpgradeDialog;-><init>()V
  3951: 
  3952:     invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
  3953: 
  3954:     move-result-object v1
  3955: 
  3956:     invoke-virtual {v0, v1}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->E2(Landroidx/fragment/app/FragmentManager;)Z
```

## decoded/smali_classes4/com/snaptube/premium/activity/ExploreActivity.smali:3950 (update_strong; file score 52)

```java
  3944: 
  3945: .method public final x2(Ljava/lang/String;)V
  3946:     .locals 2
  3947: 
  3948:     new-instance v0, Lcom/snaptube/premium/dialog/UpgradeDialog;
  3949: 
  3950:     invoke-direct {v0}, Lcom/snaptube/premium/dialog/UpgradeDialog;-><init>()V
  3951: 
  3952:     invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
  3953: 
  3954:     move-result-object v1
  3955: 
  3956:     invoke-virtual {v0, v1}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->E2(Landroidx/fragment/app/FragmentManager;)Z
  3957: 
  3958:     invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->U(Ljava/lang/String;)V
```

## jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java:25 (update_strong; file score 52)

```java
    19: import o.or3;
    20: import o.sh8;
    21: import o.th8;
    22: import org.jetbrains.annotations.NotNull;
    23: import org.jetbrains.annotations.Nullable;
    24: 
    25: @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u000eH\u0
    26: public final class UpgradeDialog extends BaseDialogFragment {
    27: 
    28:     public TextView versionTextView;
    29: 
    30:     public static void G2(UpgradeDialog upgradeDialog, View view) {
    31:         K2(upgradeDialog, view);
    32:     }
    33: 
```

## jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java:30 (update_strong; file score 52)

```java
    24: 
    25: @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u000eH\u0
    26: public final class UpgradeDialog extends BaseDialogFragment {
    27: 
    28:     public TextView versionTextView;
    29: 
    30:     public static void G2(UpgradeDialog upgradeDialog, View view) {
    31:         K2(upgradeDialog, view);
    32:     }
    33: 
    34:     public static void H2(UpgradeDialog upgradeDialog, View view) {
    35:         L2(upgradeDialog, view);
    36:     }
    37: 
    38:     public static final void K2(UpgradeDialog upgradeDialog, View view) {
```

## jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java:41 (update_strong; file score 52)

```java
    35:         L2(upgradeDialog, view);
    36:     }
    37: 
    38:     public static final void K2(UpgradeDialog upgradeDialog, View view) {
    39:         or3.f(upgradeDialog, "this$0");
    40:         or3.c(view);
    41:         upgradeDialog.N2(view);
    42:     }
    43: 
    44:     public static final void L2(UpgradeDialog upgradeDialog, View view) {
    45:         or3.f(upgradeDialog, "this$0");
    46:         or3.c(view);
    47:         upgradeDialog.M2(view);
    48:     }
    49: 
```

## jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java:64 (update_general; file score 52)

```java
    58: 
    59:     public final void J2() {
    60:         String string;
    61:         Context context = getContext();
    62:         if (context != null) {
    63:             try {
    64:                 string = context.getResources().getString(R.string.current_value, context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
    65:                 or3.e(string, "getString(...)");
    66:             } catch (PackageManager.NameNotFoundException e) {
    67:                 e.printStackTrace();
    68:                 string = "";
    69:             }
    70:             I2().setText(string);
    71:         }
    72:     }
```

## jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java:81 (update_strong; file score 52)

```java
    75:         or3.f(v, "v");
    76:         dismiss();
    77:     }
    78: 
    79:     public final void N2(View v) {
    80:         or3.f(v, "v");
    81:         CheckSelfUpgradeManager.S("intent_upgrade_dialog", true);
    82:         CheckSelfUpgradeManager.q(getContext(), "click_intent_upgrade_dialog_update_now");
    83:         dismiss();
    84:     }
    85: 
    86:     public final void O2(TextView textView) {
    87:         or3.f(textView, "<set-?>");
    88:         this.versionTextView = textView;
    89:     }
```

## jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java:94 (update_strong; file score 52)

```java
    88:         this.versionTextView = textView;
    89:     }
    90: 
    91:     @Override
    92:     public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    93:         or3.f(inflater, "inflater");
    94:         View viewInflate = inflater.inflate(R.layout.upgrade_dialog, container, false);
    95:         or3.e(viewInflate, "inflate(...)");
    96:         View viewFindViewById = viewInflate.findViewById(R.id.tv_version);
    97:         or3.e(viewFindViewById, "findViewById(...)");
    98:         O2((TextView) viewFindViewById);
    99:         viewInflate.findViewById(R.id.btn_upgrade).setOnClickListener(new sh8(this));
   100:         viewInflate.findViewById(R.id.btn_ignore).setOnClickListener(new th8(this));
   101:         return viewInflate;
   102:     }
```

## decoded/smali_classes2/com/snaptube/premium/R$drawable.smali:56 (update_strong; file score 48)

```java
    50: .field public static final apptheme_scrubber_track_holo_light:I = 0x7f0800b8
    51: 
    52: .field public static final audio_cover_shadow:I = 0x7f0800b9
    53: 
    54: .field public static final background_play_permission:I = 0x7f0800bc
    55: 
    56: .field public static final bg_about_inner_new_version_background:I = 0x7f0800bd
    57: 
    58: .field public static final bg_artwork_shadow:I = 0x7f0800c3
    59: 
    60: .field public static final bg_audio_play_circle:I = 0x7f0800c4
    61: 
    62: .field public static final bg_back_campaign:I = 0x7f0800c5
    63: 
    64: .field public static final bg_bookmark_item:I = 0x7f0800d1
```

## decoded/smali_classes2/com/snaptube/premium/R$drawable.smali:168 (update_strong; file score 48)

```java
   162: .field public static final bg_tab_selected:I = 0x7f080159
   163: 
   164: .field public static final bg_text_button_normal:I = 0x7f08015a
   165: 
   166: .field public static final bg_update_text:I = 0x7f08015c
   167: 
   168: .field public static final bg_upgrade_dialog_background:I = 0x7f08015d
   169: 
   170: .field public static final bg_white_round_corner_4dp:I = 0x7f080162
   171: 
   172: .field public static final bg_ytb_comment_input:I = 0x7f080163
   173: 
   174: .field public static final bookmark_icon_placeholder:I = 0x7f080165
   175: 
   176: .field public static final btn_blue_round_corner:I = 0x7f08016d
```

## decoded/smali_classes2/com/snaptube/premium/R$drawable.smali:264 (update_general; file score 48)

```java
   258: .field public static final how_to_use_2:I = 0x7f08020b
   259: 
   260: .field public static final how_to_use_3:I = 0x7f08020c
   261: 
   262: .field public static final ic_ad_tag:I = 0x7f080210
   263: 
   264: .field public static final ic_app_update_rect:I = 0x7f08022a
   265: 
   266: .field public static final ic_avatar_bg:I = 0x7f08023d
   267: 
   268: .field public static final ic_back_campaign:I = 0x7f08023e
   269: 
   270: .field public static final ic_bg:I = 0x7f08024c
   271: 
   272: .field public static final ic_bookmark_empty:I = 0x7f080250
```

## decoded/smali_classes2/com/snaptube/premium/R$drawable.smali:304 (update_strong; file score 48)

```java
   298: .field public static final ic_explore_end:I = 0x7f0802d1
   299: 
   300: .field public static final ic_file_banner_close:I = 0x7f0802e2
   301: 
   302: .field public static final ic_file_broken:I = 0x7f0802e3
   303: 
   304: .field public static final ic_force_upgrade:I = 0x7f0802f6
   305: 
   306: .field public static final ic_fullscreen_comment:I = 0x7f0802f8
   307: 
   308: .field public static final ic_gender_selected:I = 0x7f0802fa
   309: 
   310: .field public static final ic_gender_unselected:I = 0x7f0802fb
   311: 
   312: .field public static final ic_guide1_item_1:I = 0x7f080300
```

## decoded/smali_classes2/com/snaptube/premium/R$drawable.smali:478 (update_strong; file score 48)

```java
   472: .field public static final ic_tip_fetchfailed_normal:I = 0x7f080479
   473: 
   474: .field public static final ic_tip_fetchfailed_pressed:I = 0x7f08047a
   475: 
   476: .field public static final ic_tips_toolsbar:I = 0x7f08047b
   477: 
   478: .field public static final ic_upgrade_dialog_top_bg:I = 0x7f08048e
   479: 
   480: .field public static final ic_video_placeholder:I = 0x7f0804a4
   481: 
   482: .field public static final ic_video_seekbar_thumb_normal:I = 0x7f0804a6
   483: 
   484: .field public static final ic_video_seekbar_thumb_press:I = 0x7f0804a7
   485: 
   486: .field public static final ic_youtube_banner:I = 0x7f0804bb
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:1 (update_strong; file score 48)

```java
     1: .class public final Lcom/snaptube/premium/dialog/UpgradeDialog;
     2: .super Lcom/snaptube/premium/fragment/BaseDialogFragment;
     3: 
     4: 
     5: # annotations
     6: .annotation runtime Lkotlin/Metadata;
     7:     d1 = {
     8:         "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001
     9:     }
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:11 (update_strong; file score 48)

```java
     5: # annotations
     6: .annotation runtime Lkotlin/Metadata;
     7:     d1 = {
     8:         "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001
     9:     }
    10:     d2 = {
    11:         "Lcom/snaptube/premium/dialog/UpgradeDialog;",
    12:         "Lcom/snaptube/premium/fragment/BaseDialogFragment;",
    13:         "<init>",
    14:         "()V",
    15:         "Landroid/view/LayoutInflater;",
    16:         "inflater",
    17:         "Landroid/view/ViewGroup;",
    18:         "container",
    19:         "Landroid/os/Bundle;",
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:66 (update_strong; file score 48)

```java
    60: 
    61:     invoke-direct {p0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;-><init>()V
    62: 
    63:     return-void
    64: .end method
    65: 
    66: .method public static synthetic G2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    67:     .locals 0
    68: 
    69:     invoke-static {p0, p1}, Lcom/snaptube/premium/dialog/UpgradeDialog;->K2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    70: 
    71:     return-void
    72: .end method
    73: 
    74: .method public static synthetic H2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:74 (update_strong; file score 48)

```java
    68: 
    69:     invoke-static {p0, p1}, Lcom/snaptube/premium/dialog/UpgradeDialog;->K2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    70: 
    71:     return-void
    72: .end method
    73: 
    74: .method public static synthetic H2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    75:     .locals 0
    76: 
    77:     invoke-static {p0, p1}, Lcom/snaptube/premium/dialog/UpgradeDialog;->L2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    78: 
    79:     return-void
    80: .end method
    81: 
    82: .method public static final K2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:82 (update_strong; file score 48)

```java
    76: 
    77:     invoke-static {p0, p1}, Lcom/snaptube/premium/dialog/UpgradeDialog;->L2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    78: 
    79:     return-void
    80: .end method
    81: 
    82: .method public static final K2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    83:     .locals 1
    84: 
    85:     const-string v0, "this$0"
    86: 
    87:     invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V
    88: 
    89:     invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V
    90: 
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:91 (update_strong; file score 48)

```java
    85:     const-string v0, "this$0"
    86: 
    87:     invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V
    88: 
    89:     invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V
    90: 
    91:     invoke-virtual {p0, p1}, Lcom/snaptube/premium/dialog/UpgradeDialog;->N2(Landroid/view/View;)V
    92: 
    93:     return-void
    94: .end method
    95: 
    96: .method public static final L2(Lcom/snaptube/premium/dialog/UpgradeDialog;Landroid/view/View;)V
    97:     .locals 1
    98: 
    99:     const-string v0, "this$0"
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:105 (update_strong; file score 48)

```java
    99:     const-string v0, "this$0"
   100: 
   101:     invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V
   102: 
   103:     invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V
   104: 
   105:     invoke-virtual {p0, p1}, Lcom/snaptube/premium/dialog/UpgradeDialog;->M2(Landroid/view/View;)V
   106: 
   107:     return-void
   108: .end method
   109: 
   110: 
   111: # virtual methods
   112: .method public final I2()Landroid/widget/TextView;
   113:     .locals 1
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:115 (update_strong; file score 48)

```java
   109: 
   110: 
   111: # virtual methods
   112: .method public final I2()Landroid/widget/TextView;
   113:     .locals 1
   114: 
   115:     iget-object v0, p0, Lcom/snaptube/premium/dialog/UpgradeDialog;->d:Landroid/widget/TextView;
   116: 
   117:     if-eqz v0, :cond_0
   118: 
   119:     return-object v0
   120: 
   121:     :cond_0
   122:     const-string v0, "versionTextView"
   123: 
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:159 (update_general; file score 48)

```java
   153:     move-result-object v2
   154: 
   155:     invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
   156: 
   157:     move-result-object v1
   158: 
   159:     iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
   160: 
   161:     const/4 v3, 0x1
   162: 
   163:     new-array v3, v3, [Ljava/lang/Object;
   164: 
   165:     aput-object v2, v3, v0
   166: 
   167:     const v0, 0x7f1101df
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:189 (update_strong; file score 48)

```java
   183: 
   184:     invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
   185: 
   186:     const-string v0, ""
   187: 
   188:     :goto_0
   189:     invoke-virtual {p0}, Lcom/snaptube/premium/dialog/UpgradeDialog;->I2()Landroid/widget/TextView;
   190: 
   191:     move-result-object v1
   192: 
   193:     invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
   194: 
   195:     :cond_0
   196:     return-void
   197: .end method
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:218 (update_strong; file score 48)

```java
   212:     .locals 1
   213: 
   214:     const-string v0, "v"
   215: 
   216:     invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V
   217: 
   218:     const-string p1, "intent_upgrade_dialog"
   219: 
   220:     const/4 v0, 0x1
   221: 
   222:     invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->S(Ljava/lang/String;Z)V
   223: 
   224:     invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
   225: 
   226:     move-result-object p1
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:228 (update_strong; file score 48)

```java
   222:     invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->S(Ljava/lang/String;Z)V
   223: 
   224:     invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
   225: 
   226:     move-result-object p1
   227: 
   228:     const-string v0, "click_intent_upgrade_dialog_update_now"
   229: 
   230:     invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->q(Landroid/content/Context;Ljava/lang/String;)V
   231: 
   232:     invoke-virtual {p0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->dismiss()V
   233: 
   234:     return-void
   235: .end method
   236: 
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:244 (update_strong; file score 48)

```java
   238:     .locals 1
   239: 
   240:     const-string v0, "<set-?>"
   241: 
   242:     invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V
   243: 
   244:     iput-object p1, p0, Lcom/snaptube/premium/dialog/UpgradeDialog;->d:Landroid/widget/TextView;
   245: 
   246:     return-void
   247: .end method
   248: 
   249: .method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
   250:     .locals 1
   251: 
   252:     const-string p3, "inflater"
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:280 (update_strong; file score 48)

```java
   274:     const-string p3, "findViewById(...)"
   275: 
   276:     invoke-static {p2, p3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V
   277: 
   278:     check-cast p2, Landroid/widget/TextView;
   279: 
   280:     invoke-virtual {p0, p2}, Lcom/snaptube/premium/dialog/UpgradeDialog;->O2(Landroid/widget/TextView;)V
   281: 
   282:     const p2, 0x7f090148
   283: 
   284:     invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
   285: 
   286:     move-result-object p2
   287: 
   288:     new-instance p3, Lo/sh8;
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:290 (update_strong; file score 48)

```java
   284:     invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
   285: 
   286:     move-result-object p2
   287: 
   288:     new-instance p3, Lo/sh8;
   289: 
   290:     invoke-direct {p3, p0}, Lo/sh8;-><init>(Lcom/snaptube/premium/dialog/UpgradeDialog;)V
   291: 
   292:     invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
   293: 
   294:     const p2, 0x7f090134
   295: 
   296:     invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
   297: 
   298:     move-result-object p2
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:302 (update_strong; file score 48)

```java
   296:     invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
   297: 
   298:     move-result-object p2
   299: 
   300:     new-instance p3, Lo/th8;
   301: 
   302:     invoke-direct {p3, p0}, Lo/th8;-><init>(Lcom/snaptube/premium/dialog/UpgradeDialog;)V
   303: 
   304:     invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
   305: 
   306:     return-object p1
   307: .end method
   308: 
   309: .method public onStart()V
   310:     .locals 1
```

## decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali:359 (update_strong; file score 48)

```java
   353: 
   354:     invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
   355: 
   356:     invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
   357: 
   358:     :cond_0
   359:     invoke-virtual {p0}, Lcom/snaptube/premium/dialog/UpgradeDialog;->J2()V
   360: 
   361:     return-void
   362: .end method
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:156 (update_general; file score 48)

```java
   150:     move-result-object v1
   151: 
   152:     invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I
   153: 
   154:     move-result v1
   155: 
   156:     invoke-virtual {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->setVersionCode(I)V
   157: 
   158:     invoke-virtual {v0, p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->setConfig(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
   159: 
   160:     new-instance p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$7;
   161: 
   162:     invoke-direct {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$7;-><init>()V
   163: 
   164:     invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:432 (update_general; file score 48)

```java
   426:     check-cast p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;
   427:     :try_end_0
   428:     .catchall {:try_start_0 .. :try_end_0} :catchall_0
   429: 
   430:     if-eqz p0, :cond_3
   431: 
   432:     invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->getVersionCode()I
   433: 
   434:     move-result p1
   435: 
   436:     invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;
   437: 
   438:     move-result-object v1
   439: 
   440:     invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:530 (update_general; file score 48)

```java
   524:     invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
   525: 
   526:     move-result v0
   527: 
   528:     if-nez v0, :cond_1
   529: 
   530:     invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I
   531: 
   532:     move-result v0
   533: 
   534:     invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I
   535: 
   536:     move-result v1
   537: 
   538:     if-ne v0, v1, :cond_0
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:679 (update_strong; file score 48)

```java
   673:     const-string v1, "Upgrade"
   674: 
   675:     invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;
   676: 
   677:     move-result-object v0
   678: 
   679:     const-string v1, "intent_upgrade_dialog_exposure"
   680: 
   681:     invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;
   682: 
   683:     move-result-object v0
   684: 
   685:     const-string v1, "arg1"
   686: 
   687:     invoke-interface {v0, v1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:1835 (update_general; file score 48)

```java
  1829:     move-result-object p1
  1830: 
  1831:     invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->c(Z)Lcom/snaptube/permission/a$a;
  1832: 
  1833:     move-result-object p1
  1834: 
  1835:     const-string v0, "app_upgrade"
  1836: 
  1837:     invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->j(Ljava/lang/String;)Lcom/snaptube/permission/a$a;
  1838: 
  1839:     move-result-object p1
  1840: 
  1841:     invoke-virtual {p1}, Lcom/snaptube/permission/a$a;->a()Lcom/snaptube/permission/a;
  1842: 
  1843:     move-result-object p1
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:1900 (update_general; file score 48)

```java
  1894: 
  1895:     if-nez v0, :cond_2
  1896: 
  1897:     return-void
  1898: 
  1899:     :cond_2
  1900:     invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I
  1901: 
  1902:     move-result p0
  1903: 
  1904:     invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I
  1905: 
  1906:     move-result v1
  1907: 
  1908:     if-ne p0, v1, :cond_3
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali:2074 (update_strong; file score 48)

```java
  2068:     invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;
  2069: 
  2070:     move-result-object p0
  2071: 
  2072:     new-instance p1, Landroid/content/Intent;
  2073: 
  2074:     const-string v0, "phoenix.intent.action.NEW_VERSION_AVIABLE"
  2075: 
  2076:     invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  2077: 
  2078:     invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  2079: 
  2080:     :cond_2
  2081:     return-void
  2082: .end method
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.smali:363 (update_general; file score 48)

```java
   357:     invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
   358: 
   359:     move-result-object v0
   360: 
   361:     if-eqz v0, :cond_0
   362: 
   363:     invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I
   364: 
   365:     move-result v1
   366: 
   367:     invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I
   368: 
   369:     move-result v2
   370: 
   371:     if-ne v1, v2, :cond_0
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.smali:666 (update_general; file score 48)

```java
   660:     iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->version:Ljava/lang/String;
   661: 
   662:     :goto_0
   663:     return-object v0
   664: .end method
   665: 
   666: .method public getVersionCode()I
   667:     .locals 4
   668: 
   669:     invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;
   670: 
   671:     move-result-object v0
   672: 
   673:     invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
   674: 
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.smali:779 (update_strong; file score 48)

```java
   773: 
   774:     iget-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->stop:Z
   775: 
   776:     return v0
   777: .end method
   778: 
   779: .method public isStrictForceUpdate()Z
   780:     .locals 1
   781: 
   782:     iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;
   783: 
   784:     if-eqz v0, :cond_0
   785: 
   786:     iget-boolean v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->isForceUpdate:Z
   787: 
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.smali:786 (update_strong; file score 48)

```java
   780:     .locals 1
   781: 
   782:     iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;
   783: 
   784:     if-eqz v0, :cond_0
   785: 
   786:     iget-boolean v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->isForceUpdate:Z
   787: 
   788:     if-eqz v0, :cond_0
   789: 
   790:     const/4 v0, 0x1
   791: 
   792:     goto :goto_0
   793: 
   794:     :cond_0
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/a.smali:512 (update_strong; file score 48)

```java
   506: 
   507:     goto :goto_0
   508: 
   509:     :cond_5
   510:     invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V
   511: 
   512:     sget-object p1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;
   513: 
   514:     invoke-virtual {p1, v1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->q(Z)V
   515: 
   516:     :goto_0
   517:     return-void
   518: .end method
   519: 
   520: .method public j(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/a.smali:605 (update_general; file score 48)

```java
   599:     iput-wide v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J
   600: 
   601:     const/4 p1, 0x0
   602: 
   603:     iput p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I
   604: 
   605:     invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isEnableAppUpgradeDownloadWithMobile()Z
   606: 
   607:     move-result p1
   608: 
   609:     :try_start_0
   610:     iget-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->k:Ljava/lang/String;
   611: 
   612:     iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->l:Ljava/lang/String;
   613: 
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/b.smali:166 (update_strong; file score 48)

```java
   160:     invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
   161: 
   162:     const-string v1, "-"
   163: 
   164:     invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
   165: 
   166:     invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStrictForceUpdate()Z
   167: 
   168:     move-result p0
   169: 
   170:     invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
   171: 
   172:     invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
   173: 
   174:     move-result-object p0
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/b.smali:261 (update_general; file score 48)

```java
   255:     move-result v0
   256: 
   257:     invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
   258: 
   259:     move-result-object v0
   260: 
   261:     const-string v1, "previous_version_code"
   262: 
   263:     invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;
   264: 
   265:     move-result-object p0
   266: 
   267:     const-string v0, "trigger_tag"
   268: 
   269:     invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/b.smali:321 (update_general; file score 48)

```java
   315:     move-result v1
   316: 
   317:     invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
   318: 
   319:     move-result-object v1
   320: 
   321:     const-string v2, "previous_version_code"
   322: 
   323:     invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;
   324: 
   325:     move-result-object v0
   326: 
   327:     const-string v1, "trigger_tag"
   328: 
   329:     invoke-interface {v0, v1, p2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;
```

## decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/b.smali:567 (update_strong; file score 48)

```java
   561:     const-string v1, "Upgrade"
   562: 
   563:     invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;
   564: 
   565:     move-result-object v0
   566: 
   567:     const-string v1, "show_new_version_tips"
   568: 
   569:     invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;
   570: 
   571:     move-result-object v0
   572: 
   573:     invoke-interface {v0}, Lo/ah3;->reportEvent()V
   574: 
   575:     return-void
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:192 (update_general; file score 48)

```java
   186: 
   187:         public abstract long getLastCheckTime();
   188:     }
   189: 
   190:     public static class LocalUpdateConfig implements Serializable {
   191:         private UpgradeConfig config;
   192:         private int versionCode;
   193: 
   194:         public UpgradeConfig getConfig() {
   195:             return this.config;
   196:         }
   197: 
   198:         public int getVersionCode() {
   199:             return this.versionCode;
   200:         }
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:206 (update_general; file score 48)

```java
   200:         }
   201: 
   202:         public void setConfig(UpgradeConfig upgradeConfig) {
   203:             this.config = upgradeConfig;
   204:         }
   205: 
   206:         public void setVersionCode(int i) {
   207:             this.versionCode = i;
   208:         }
   209:     }
   210: 
   211:     public class a extends tu7 {
   212:         public final TextView a;
   213:         public final TextView b;
   214:         public final Context c;
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:383 (update_strong; file score 48)

```java
   377:             if (CheckSelfUpgradeManager.k(upgradeConfig)) {
   378:                 CheckSelfUpgradeManager.J().C(this.b, upgradeConfig, this.d);
   379:             } else {
   380:                 if (!this.c || (context = this.a) == null) {
   381:                     return;
   382:                 }
   383:                 b88.l(context, R.string.setting_dialog_already_new_version);
   384:             }
   385:         }
   386: 
   387:         @Override
   388:         public void onCompleted() {
   389:             CheckSelfUpgradeManager.b();
   390:         }
   391: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:421 (update_general; file score 48)

```java
   415:             com.snaptube.premium.selfupgrade.incremental_upgrade.b.u(upgradeConfig, true);
   416:         }
   417:     }
   418: 
   419:     public static String E(UpgradeConfig upgradeConfig) {
   420:         LocalUpdateConfig localUpdateConfig = new LocalUpdateConfig();
   421:         localUpdateConfig.setVersionCode(az7.P(PhoenixApplication.z()));
   422:         localUpdateConfig.setConfig(upgradeConfig);
   423:         return j23.i(localUpdateConfig, new AnonymousClass7().getType());
   424:     }
   425: 
   426:     public static UpgradeConfig F() {
   427:         return N("last_apk_downloaded_upgrade_config", f);
   428:     }
   429: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:492 (update_general; file score 48)

```java
   486:         String string = Config.b0().getString(str, "");
   487:         if (TextUtils.isEmpty(string)) {
   488:             return null;
   489:         }
   490:         try {
   491:             LocalUpdateConfig localUpdateConfig = (LocalUpdateConfig) j23.c(string, new AnonymousClass6().getType());
   492:             if (localUpdateConfig != null && localUpdateConfig.getVersionCode() >= az7.P(PhoenixApplication.z())) {
   493:                 return localUpdateConfig.getConfig();
   494:             }
   495:         } catch (Throwable unused) {
   496:         }
   497:         return null;
   498:     }
   499: 
   500:     public static String O() {
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:514 (update_general; file score 48)

```java
   508: 
   509:     public static rx.c Q(Context context, String str) {
   510:         return wl8.f(context).H(new e(str, context)).y(new d(str));
   511:     }
   512: 
   513:     public static boolean R(UpgradeConfig upgradeConfig, UpgradeConfig upgradeConfig2) {
   514:         return !TextUtils.isEmpty(upgradeConfig.getVersion()) && (upgradeConfig.getVersionCode() != upgradeConfig2.getVersionCode() || j(upgradeConfig, upgradeConfig2)) && rh8.a(upgradeConfig);
   515:     }
   516: 
   517:     public static void S(String str, boolean z) {
   518:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("click_" + str).setProperty("arg1", Boolean.valueOf(z)).reportEvent();
   519:     }
   520: 
   521:     public static void T(String str, boolean z, int i) {
   522:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("download_" + str).setProperty("success", Boolean.valueOf(z)).setProperty("arg2", Integer.valueOf(i)).reportEvent();
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:526 (update_strong; file score 48)

```java
   520: 
   521:     public static void T(String str, boolean z, int i) {
   522:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("download_" + str).setProperty("success", Boolean.valueOf(z)).setProperty("arg2", Integer.valueOf(i)).reportEvent();
   523:     }
   524: 
   525:     public static void U(String str) {
   526:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("intent_upgrade_dialog_exposure").setProperty("arg1", str).reportEvent();
   527:     }
   528: 
   529:     public static void V(UpgradeConfig upgradeConfig) {
   530:         Config.b0().edit().remove("last_apk_downloaded_upgrade_config").apply();
   531:         f = null;
   532:         w(upgradeConfig);
   533:     }
   534: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:709 (update_strong; file score 48)

```java
   703:         upgradeConfig.deleteApk();
   704:         r(activity, str);
   705:         return false;
   706:     }
   707: 
   708:     public static void i0(TextView textView) {
   709:         textView.setText(R.string.setting_dialog_already_new_version);
   710:     }
   711: 
   712:     public static boolean j(UpgradeConfig upgradeConfig, UpgradeConfig upgradeConfig2) {
   713:         if (TextUtils.isEmpty(upgradeConfig.getFilePath())) {
   714:             return false;
   715:         }
   716:         return !upgradeConfig.getFilePath().equals(upgradeConfig2.getFilePath());
   717:     }
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:787 (update_general; file score 48)

```java
   781:         if (activity == null) {
   782:             activity = s5.d();
   783:         }
   784:         if (activity == null) {
   785:             return;
   786:         }
   787:         pq5.a().e(activity, new com.snaptube.permission.a.C0392a().h(sq5.e()).i(me7Var).e(1).c(true).j("app_upgrade").a());
   788:     }
   789: 
   790:     public static void w(UpgradeConfig upgradeConfig) {
   791:         if (upgradeConfig == null) {
   792:             return;
   793:         }
   794:         if (upgradeConfig.isApkExist()) {
   795:             ProductionEnv.d("deleteOldDownloadedApk1:result=" + upgradeConfig.deleteApk());
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:799 (update_general; file score 48)

```java
   793:         }
   794:         if (upgradeConfig.isApkExist()) {
   795:             ProductionEnv.d("deleteOldDownloadedApk1:result=" + upgradeConfig.deleteApk());
   796:             return;
   797:         }
   798:         UpgradeConfig upgradeConfigF = F();
   799:         if (upgradeConfigF != null && upgradeConfig.getVersionCode() == upgradeConfigF.getVersionCode() && upgradeConfigF.isApkExist()) {
   800:             ProductionEnv.d("deleteOldDownloadedApk2:result=" + upgradeConfigF.deleteApk());
   801:         }
   802:     }
   803: 
   804:     public static void x() {
   805:         ProgressDialog progressDialog = c;
   806:         if (progressDialog != null && progressDialog.isShowing() && az7.U(c.getContext())) {
   807:             c.dismiss();
```

## jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:828 (update_strong; file score 48)

```java
   822:                 Y();
   823:             } else {
   824:                 upgradeConfig = M();
   825:             }
   826:         }
   827:         if (k(upgradeConfig)) {
   828:             PhoenixApplication.z().sendBroadcast(new Intent("phoenix.intent.action.NEW_VERSION_AVIABLE"));
   829:         }
   830:     }
   831: 
   832:     public com.snaptube.premium.selfupgrade.incremental_upgrade.a B(UpgradeConfig upgradeConfig, String str, boolean z, String str2, String str3) {
   833:         com.snaptube.premium.selfupgrade.incremental_upgrade.b.q(upgradeConfig, str);
   834:         IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode = IUpgradeDownloader$DownloadMode.MANUALLY;
   835:         com.snaptube.premium.selfupgrade.incremental_upgrade.a aVarH = h(iUpgradeDownloader$DownloadMode);
   836:         aVarH.A(str);
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.java:45 (update_strong; file score 48)

```java
    39:         public String status;
    40:     }
    41: 
    42:     public static class UpgradeMeta implements Serializable {
    43:         public static final long serialVersionUID = 1;
    44:         public String changeLog;
    45:         public boolean isForceUpdate;
    46:         public int notifyInterval;
    47:         public String popupBannerUrl;
    48:         public int popupInterval;
    49:         public UpdatePriority priority;
    50:         public String subTitle;
    51:         public String title;
    52:         public String version;
    53:     }
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.java:101 (update_general; file score 48)

```java
    95:         UpgradeMeta upgradeMeta = this.meta;
    96:         return (upgradeMeta == null || TextUtils.isEmpty(upgradeMeta.changeLog)) ? "" : this.meta.changeLog;
    97:     }
    98: 
    99:     public String getFilePath() {
   100:         UpgradeConfig upgradeConfigF;
   101:         if (TextUtils.isEmpty(this.filePath) && (upgradeConfigF = CheckSelfUpgradeManager.F()) != null && getVersionCode() == upgradeConfigF.getVersionCode()) {
   102:             this.filePath = upgradeConfigF.filePath;
   103:         }
   104:         return this.filePath;
   105:     }
   106: 
   107:     public long getFullFileSize() {
   108:         PackageInfo packageInfo;
   109:         UpgradeInfo upgradeInfo = this.fullInfo;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.java:184 (update_general; file score 48)

```java
   178: 
   179:     public String getVersion() {
   180:         UpgradeMeta upgradeMeta = this.meta;
   181:         return upgradeMeta == null ? "" : upgradeMeta.version;
   182:     }
   183: 
   184:     public int getVersionCode() {
   185:         String version = getVersion();
   186:         if (TextUtils.isEmpty(version)) {
   187:             return -1;
   188:         }
   189:         String[] strArrSplit = version.split("\\.");
   190:         if (strArrSplit.length != 4) {
   191:             return -1;
   192:         }
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.java:216 (update_strong; file score 48)

```java
   210:     }
   211: 
   212:     public boolean isStop() {
   213:         return this.stop;
   214:     }
   215: 
   216:     public boolean isStrictForceUpdate() {
   217:         UpgradeMeta upgradeMeta = this.meta;
   218:         return upgradeMeta != null && upgradeMeta.isForceUpdate;
   219:     }
   220: 
   221:     public boolean isStrongUpdate() {
   222:         return getPriority() == UpdatePriority.STRONG;
   223:     }
   224: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/a.java:10 (update_strong; file score 48)

```java
     4: import android.os.Looper;
     5: import android.text.TextUtils;
     6: import com.snaptube.premium.R;
     7: import com.snaptube.premium.app.PhoenixApplication;
     8: import com.snaptube.premium.configs.Config;
     9: import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
    10: import com.snaptube.premium.selfupgrade.force.AppForceUpdateHelper;
    11: import com.snaptube.taskManager.TaskMessageCenter;
    12: import com.snaptube.taskManager.datasets.TaskInfo;
    13: import com.snaptube.taskManager.provider.TaskInfoDBUtils;
    14: import com.snaptube.util.ProductionEnv;
    15: import com.wandoujia.base.config.GlobalConfig;
    16: import java.io.File;
    17: import java.util.Iterator;
    18: import java.util.List;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/a.java:236 (update_strong; file score 48)

```java
   230:         if (TextUtils.equals(this.d, taskInfo.w) && (taskInfo instanceof cm3)) {
   231:             cm3 cm3Var = (cm3) taskInfo;
   232:             this.e = cm3Var.a;
   233:             int i2 = c.a[taskInfo.i.ordinal()];
   234:             if (i2 == 1) {
   235:                 w(true, cm3Var);
   236:                 AppForceUpdateHelper.a.q(true);
   237:                 return;
   238:             }
   239:             if (i2 == 2) {
   240:                 w(false, null);
   241:                 return;
   242:             }
   243:             if (i2 != 3) {
   244:                 return;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/a.java:292 (update_general; file score 48)

```java
   286:         this.g = dVar;
   287:         this.c = upgradeConfig.getVersion();
   288:         this.b = iUpgradeDownloader$DownloadMode;
   289:         this.e = -1L;
   290:         this.f = 0;
   291:         try {
   292:             cm3VarQ = q(upgradeConfig, GlobalConfig.isEnableAppUpgradeDownloadWithMobile(), this.k, this.l);
   293:         } catch (IllegalStateException e) {
   294:             ProductionEnv.errorLog("IncrementalDownloader", "taskInfo not valid");
   295:             cm3 cm3Var2 = new cm3();
   296:             cm3Var2.v = upgradeConfig.getFullMd5();
   297:             com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var2, "build_taskinfo_error");
   298:             e.printStackTrace();
   299:             cm3VarQ = null;
   300:         }
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:38 (update_general; file score 48)

```java
    32:             this.a = cm3Var;
    33:             this.b = str;
    34:         }
    35: 
    36:         @Override
    37:         public void run() {
    38:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_error").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.V).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("file_size", Long.valueOf((this.a.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("error", this.b).setProperty("upgrade_md5", this.a.v).reportEvent();
    39:         }
    40:     }
    41: 
    42:     public class RunnableC0447b implements Runnable {
    43:         public final UpgradeConfig a;
    44:         public final boolean b;
    45: 
    46:         public RunnableC0447b(UpgradeConfig upgradeConfig, boolean z) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:80 (update_general; file score 48)

```java
    74:             this.a = str;
    75:             this.b = upgradeConfig;
    76:         }
    77: 
    78:         @Override
    79:         public void run() {
    80:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_start").setProperty("trigger_campaign", this.a).setProperty("trigger_tag", Config.v()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", b.g(this.b)).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.b)).setProperty("config_result", CheckSelfUpgradeManager.H(this.b)).setProperty("upgrade_md5", b.f(this.b)).reportEvent();
    81:         }
    82:     }
    83: 
    84:     public class d implements Runnable {
    85:         public final cm3 a;
    86: 
    87:         public d(cm3 cm3Var) {
    88:             this.a = cm3Var;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:93 (update_general; file score 48)

```java
    87:         public d(cm3 cm3Var) {
    88:             this.a = cm3Var;
    89:         }
    90: 
    91:         @Override
    92:         public void run() {
    93:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_begin").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("upgrade_md5", this.a.v).setProperty("arg2", Integer.valueOf(this.a.c)).setProperty("full_url", this.a.y0).setProperty("position_source", this.a.V).setProperty("signature", this.a.v).reportEvent();
    94:         }
    95:     }
    96: 
    97:     public class e implements Runnable {
    98:         public final cm3 a;
    99: 
   100:         public e(cm3 cm3Var) {
   101:             this.a = cm3Var;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:106 (update_general; file score 48)

```java
   100:         public e(cm3 cm3Var) {
   101:             this.a = cm3Var;
   102:         }
   103: 
   104:         @Override
   105:         public void run() {
   106:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_done").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("file_size", Long.valueOf((this.a.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(this.a))).setProperty("upgrade_md5", this.a.v).setProperty("md5", vg4.b(this.a.i())).setProperty("arg2", Integer.valueOf(this.a.c)).setProperty("full_url", this.a.y0).setProperty("position_source", this.a.V).setProperty("signature", this.a.v).reportEvent();
   107:         }
   108:     }
   109: 
   110:     public class f implements Runnable {
   111:         public final UpgradeConfig a;
   112:         public final String b;
   113:         public final String c;
   114:         public final boolean d;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:127 (update_general; file score 48)

```java
   121:         }
   122: 
   123:         @Override
   124:         public void run() {
   125:             TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
   126:             cm3 cm3Var = taskInfoR0 instanceof cm3 ? (cm3) taskInfoR0 : null;
   127:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction("show_" + this.b).setProperty("trigger_campaign", cm3Var == null ? this.c : cm3Var.V).setProperty("trigger_tag", cm3Var == null ? Config.v() : cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var == null ? b.g(this.a) : cm3Var.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("config_result", CheckSelfUpgradeManager.H(this.a)).setProperty("file_size", Long.valueOf((b.e(this.a) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.valueOf(this.d)).setProperty("scene", this.c).setProperty("download_time", b.b(cm3Var == null ? 0L : cm3Var.Z())).setProperty("upgrade_md5", b.f(this.a)).setProperty("md5", vg4.b(cm3Var !=
   128:         }
   129:     }
   130: 
   131:     public class g implements Runnable {
   132:         public final UpgradeConfig a;
   133:         public final String b;
   134:         public final boolean c;
   135:         public final String d;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:154 (update_general; file score 48)

```java
   148:             TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
   149:             cm3 cm3Var = taskInfoR0 instanceof cm3 ? (cm3) taskInfoR0 : null;
   150:             String str = "click_" + this.b;
   151:             if (!this.c) {
   152:                 str = "click_upgrade_page_not_now";
   153:             }
   154:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction(str).setProperty("trigger_campaign", cm3Var == null ? this.d : cm3Var.V).setProperty("trigger_tag", cm3Var == null ? Config.v() : cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var == null ? b.g(this.a) : cm3Var.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("config_result", CheckSelfUpgradeManager.H(this.a)).setProperty("file_size", Long.valueOf((b.e(this.a) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.valueOf(this.a.isApkExist())).setProperty("scene", this.d).setProperty("download_time", b.b(cm3Var == null ? 0L : cm3Var.Z())).setProperty("trigger_pos", this.e).setProperty("upgrade_md5", b.f(this.a))
   155:         }
   156:     }
   157: 
   158:     public class h implements Runnable {
   159:         public final cm3 a;
   160:         public final UpgradeConfig b;
   161: 
   162:         public h(cm3 cm3Var, UpgradeConfig upgradeConfig) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:171 (update_general; file score 48)

```java
   165:         }
   166: 
   167:         @Override
   168:         public void run() {
   169:             String strB = vg4.b(this.a.i());
   170:             String strF = b.f(this.b);
   171:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction("upgrade_install").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("file_size", Long.valueOf((this.a.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(this.a))).setProperty("is_downloaded", Boolean.valueOf(this.b.isApkExist())).setProperty("scene", this.a.b0()).setProperty("download_time", b.b(this.a.Z())).setProperty("trigger_pos", this.a.d0()).setProperty("upgrade_md5", strF).setProperty("md5", strB).setProperty("is_md5_correct", Boolean.valueOf(strB.equals(strF))).reportEvent();
   172:             Config.j6(this.a.w);
   173:         }
   174:     }
   175: 
   176:     public class i implements Runnable {
   177:         @Override
   178:         public void run() {
   179:             TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(Config.q1());
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:182 (update_general; file score 48)

```java
   176:     public class i implements Runnable {
   177:         @Override
   178:         public void run() {
   179:             TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(Config.q1());
   180:             if (taskInfoR0 instanceof cm3) {
   181:                 cm3 cm3Var = (cm3) taskInfoR0;
   182:                 ReportPropertyBuilder.e().setEventName("Upgrade").setAction("upgrade_from").setProperty("trigger_campaign", cm3Var.V).setProperty("trigger_tag", cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var.Y()).setProperty("arg3", cm3Var.v0).setProperty("arg4", cm3Var.getVersion()).setProperty("config_result", cm3Var.X()).setProperty("file_size", Long.valueOf((cm3Var.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.TRUE).setProperty("scene", cm3Var.d0()).setProperty("download_time", b.b(cm3Var.Z())).setProperty("trigger_pos", cm3Var.d0()).setProperty("upgrade_md5", cm3Var.v).setProperty("md5", vg4.b(cm3Var.i())).reportEvent();
   183:             }
   184:         }
   185:     }
   186: 
   187:     public class j implements Runnable {
   188:         public final UpgradeConfig a;
   189:         public final String b;
   190:         public final String c;
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:202 (update_general; file score 48)

```java
   196:         }
   197: 
   198:         @Override
   199:         public void run() {
   200:             TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
   201:             cm3 cm3Var = taskInfoR0 instanceof cm3 ? (cm3) taskInfoR0 : null;
   202:             ReportPropertyBuilder.e().setEventName("Upgrade").setAction(this.b).setProperty("trigger_campaign", cm3Var == null ? this.c : cm3Var.V).setProperty("trigger_tag", cm3Var == null ? Config.v() : cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var == null ? b.g(this.a) : cm3Var.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("config_result", CheckSelfUpgradeManager.H(this.a)).setProperty("file_size", Long.valueOf((b.e(this.a) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.TRUE).setProperty("scene", this.c).setProperty("download_time", b.b(cm3Var == null ? 0L : cm3Var.Z())).setProperty("upgrade_md5", b.f(this.a)).setProperty("md5", vg4.b(cm3Var == null ? "" : cm3Var.i
   203:         }
   204:     }
   205: 
   206:     public interface k {
   207:         void T0(b bVar);
   208:     }
   209: 
   210:     public b(Context context) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:251 (update_strong; file score 48)

```java
   245:         if (upgradeConfig == null) {
   246:             return "";
   247:         }
   248:         if (upgradeConfig.getPriority() != UpgradeConfig.UpdatePriority.STRONG) {
   249:             return upgradeConfig.getPriority().name();
   250:         }
   251:         return upgradeConfig.getPriority().name() + "-" + upgradeConfig.isStrictForceUpdate();
   252:     }
   253: 
   254:     public static String h(UpgradeConfig upgradeConfig) {
   255:         return upgradeConfig != null ? upgradeConfig.getVersion() : "";
   256:     }
   257: 
   258:     public static void i(String str, String str2) {
   259:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("check_config").setProperty("config_type", str).setProperty("previous_upgrade_time", d(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("trigger_tag", str2).reportEvent();
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:264 (update_general; file score 48)

```java
   258:     public static void i(String str, String str2) {
   259:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("check_config").setProperty("config_type", str).setProperty("previous_upgrade_time", d(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("trigger_tag", str2).reportEvent();
   260:     }
   261: 
   262:     public static void j(String str, UpgradeConfig upgradeConfig, String str2) {
   263:         Config.k5(str2);
   264:         ah3 property = ReportPropertyBuilder.e().setEventName("Upgrade").setAction("check_config_result").setProperty("previous_upgrade_time", d(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("trigger_tag", str2).setProperty("config_result", str);
   265:         if ("CanFullUpgrade".equals(str) || "CanPathUpgrade".equals(str)) {
   266:             property.setProperty("config_type", g(upgradeConfig)).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", h(upgradeConfig)).setProperty("upgrade_md5", f(upgradeConfig));
   267:         }
   268:         property.reportEvent();
   269:     }
   270: 
   271:     public static void k(UpgradeConfig upgradeConfig, String str, boolean z, String str2, String str3) {
   272:         if (upgradeConfig == null) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java:308 (update_strong; file score 48)

```java
   302:             return;
   303:         }
   304:         ThreadPool.a(new h(cm3Var, upgradeConfig));
   305:     }
   306: 
   307:     public static void t() {
   308:         ReportPropertyBuilder.e().setEventName("Upgrade").setAction("show_new_version_tips").reportEvent();
   309:     }
   310: 
   311:     public static void u(UpgradeConfig upgradeConfig, boolean z) {
   312:         if (upgradeConfig == null) {
   313:             return;
   314:         }
   315:         ThreadPool.a(new RunnableC0447b(upgradeConfig, z));
   316:     }
```

## jadx/sources/com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment.java:24 (update_strong; file score 44)

```java
    18: import androidx.fragment.app.FragmentTransaction;
    19: import com.mbridge.msdk.MBridgeConstans;
    20: import com.mbridge.msdk.foundation.download.core.DownloadCommon;
    21: import com.snaptube.premium.R;
    22: import com.snaptube.premium.fragment.BaseDialogFragment;
    23: import com.snaptube.premium.log.ReportPropertyBuilder;
    24: import com.snaptube.premium.selfupgrade.force.AppForceUpdateHelper;
    25: import com.snaptube.util.ProductionEnv;
    26: import com.wandoujia.base.config.GlobalConfig;
    27: import java.util.concurrent.TimeUnit;
    28: import kotlin.Metadata;
    29: import kotlin.b;
    30: import kotlin.jvm.internal.SourceDebugExtension;
    31: import kotlin.text.StringsKt__StringsKt;
    32: import o.b88;
```

## jadx/sources/com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment.java:109 (update_strong; file score 44)

```java
   103:     public boolean onBackPressed() {
   104:         if (!or3.a("compulsory_upgrade", H2())) {
   105:             return false;
   106:         }
   107:         long jElapsedRealtime = SystemClock.elapsedRealtime();
   108:         if (jElapsedRealtime - this.lastClick < TimeUnit.SECONDS.toMillis(2L)) {
   109:             AppForceUpdateHelper.a.h();
   110:             return true;
   111:         }
   112:         this.lastClick = jElapsedRealtime;
   113:         b88.l(requireContext(), R.string.toast_double_click_back);
   114:         return true;
   115:     }
   116: 
   117:     @Override
```

## jadx/sources/com/snaptube/premium/selfupgrade/BaseUpgradeActivity.java:320 (update_strong; file score 44)

```java
   314:     }
   315: 
   316:     public final void F1() {
   317:         String strY0 = Config.Y0();
   318:         if (strY0 != null && strY0.length() != 0) {
   319:             or3.c(strY0);
   320:             G1(strY0, R.string.force_update_toast_download_link);
   321:         } else if (sq5.c()) {
   322:             c1();
   323:         } else {
   324:             Z0();
   325:         }
   326:     }
   327: 
   328:     public final void G1(String outsideUpdateApkUrl, int toast) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/BaseUpgradeActivity.java:545 (update_strong; file score 44)

```java
   539: 
   540:     public final boolean s1() {
   541:         return or3.a(i1(), "normal_upgrade");
   542:     }
   543: 
   544:     public final String t1() {
   545:         return or3.a(i1(), "normal_upgrade") ? "NormalUpdateActivity" : "ForceUpdateActivity";
   546:     }
   547: 
   548:     public abstract void u1();
   549: 
   550:     public abstract void w1();
   551: 
   552:     public final boolean x1(TaskInfo taskInfo) {
   553:         String str = taskInfo.v;
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:25 (update_strong; file score 44)

```java
    19: import o.mp6;
    20: import o.or3;
    21: import o.rh8;
    22: import o.sq5;
    23: import o.wu7;
    24: 
    25: public final class AppForceUpdateHelper {
    26:     public static boolean d;
    27:     public static wu7 e;
    28:     public static final AppForceUpdateHelper a = new AppForceUpdateHelper();
    29:     public static final Set b = new HashSet();
    30:     public static final Set c = new HashSet();
    31:     public static final Application.ActivityLifecycleCallbacks f = new a();
    32: 
    33:     public static final class a implements Application.ActivityLifecycleCallbacks {
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:37 (update_strong; file score 44)

```java
    31:     public static final Application.ActivityLifecycleCallbacks f = new a();
    32: 
    33:     public static final class a implements Application.ActivityLifecycleCallbacks {
    34:         @Override
    35:         public void onActivityCreated(Activity activity, Bundle bundle) {
    36:             or3.f(activity, "activity");
    37:             AppForceUpdateHelper.c().add(activity);
    38:         }
    39: 
    40:         @Override
    41:         public void onActivityDestroyed(Activity activity) {
    42:             or3.f(activity, "activity");
    43:             AppForceUpdateHelper.c().remove(activity);
    44:         }
    45: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:43 (update_strong; file score 44)

```java
    37:             AppForceUpdateHelper.c().add(activity);
    38:         }
    39: 
    40:         @Override
    41:         public void onActivityDestroyed(Activity activity) {
    42:             or3.f(activity, "activity");
    43:             AppForceUpdateHelper.c().remove(activity);
    44:         }
    45: 
    46:         @Override
    47:         public void onActivityPaused(Activity activity) {
    48:             or3.f(activity, "activity");
    49:         }
    50: 
    51:         @Override
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:54 (update_strong; file score 44)

```java
    48:             or3.f(activity, "activity");
    49:         }
    50: 
    51:         @Override
    52:         public void onActivityResumed(Activity activity) {
    53:             or3.f(activity, "activity");
    54:             AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
    55:             if (AppForceUpdateHelper.d(appForceUpdateHelper, activity)) {
    56:                 AppForceUpdateHelper.a(appForceUpdateHelper, activity);
    57:             }
    58:         }
    59: 
    60:         @Override
    61:         public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    62:             or3.f(activity, "activity");
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:69 (update_strong; file score 44)

```java
    63:             or3.f(bundle, "outState");
    64:         }
    65: 
    66:         @Override
    67:         public void onActivityStarted(Activity activity) {
    68:             or3.f(activity, "activity");
    69:             AppForceUpdateHelper.b().add(activity);
    70:         }
    71: 
    72:         @Override
    73:         public void onActivityStopped(Activity activity) {
    74:             or3.f(activity, "activity");
    75:             AppForceUpdateHelper.b().remove(activity);
    76:             if (AppForceUpdateHelper.b().isEmpty()) {
    77:                 AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:75 (update_strong; file score 44)

```java
    69:             AppForceUpdateHelper.b().add(activity);
    70:         }
    71: 
    72:         @Override
    73:         public void onActivityStopped(Activity activity) {
    74:             or3.f(activity, "activity");
    75:             AppForceUpdateHelper.b().remove(activity);
    76:             if (AppForceUpdateHelper.b().isEmpty()) {
    77:                 AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
    78:                 if (appForceUpdateHelper.j()) {
    79:                     appForceUpdateHelper.q(false);
    80:                 }
    81:             }
    82:         }
    83:     }
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:85 (update_strong; file score 44)

```java
    79:                     appForceUpdateHelper.q(false);
    80:                 }
    81:             }
    82:         }
    83:     }
    84: 
    85:     public static final void a(AppForceUpdateHelper appForceUpdateHelper, Activity activity) {
    86:         appForceUpdateHelper.g(activity);
    87:     }
    88: 
    89:     public static final Set b() {
    90:         return c;
    91:     }
    92: 
    93:     public static final Set c() {
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:97 (update_strong; file score 44)

```java
    91:     }
    92: 
    93:     public static final Set c() {
    94:         return b;
    95:     }
    96: 
    97:     public static final boolean d(AppForceUpdateHelper appForceUpdateHelper, Activity activity) {
    98:         return appForceUpdateHelper.n(activity);
    99:     }
   100: 
   101:     public static final void e(AppForceUpdateHelper appForceUpdateHelper, Activity activity, String str) {
   102:         appForceUpdateHelper.s(activity, str);
   103:     }
   104: 
   105:     public final boolean f(UpgradeConfig upgradeConfig) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:101 (update_strong; file score 44)

```java
    95:     }
    96: 
    97:     public static final boolean d(AppForceUpdateHelper appForceUpdateHelper, Activity activity) {
    98:         return appForceUpdateHelper.n(activity);
    99:     }
   100: 
   101:     public static final void e(AppForceUpdateHelper appForceUpdateHelper, Activity activity, String str) {
   102:         appForceUpdateHelper.s(activity, str);
   103:     }
   104: 
   105:     public final boolean f(UpgradeConfig upgradeConfig) {
   106:         return (upgradeConfig.isApkExist() || l()) ? false : true;
   107:     }
   108: 
   109:     public final void g(Activity activity) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:112 (update_strong; file score 44)

```java
   106:         return (upgradeConfig.isApkExist() || l()) ? false : true;
   107:     }
   108: 
   109:     public final void g(Activity activity) {
   110:         wu7 wu7Var = e;
   111:         if (wu7Var == null || wu7Var.isUnsubscribed()) {
   112:             e = mp6.d(null, new AppForceUpdateHelper$checkForceUpdateAsync$1(activity), 1, null);
   113:         }
   114:     }
   115: 
   116:     public final void h() {
   117:         Iterator it2 = b.iterator();
   118:         while (it2.hasNext()) {
   119:             ((Activity) it2.next()).finish();
   120:         }
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:127 (update_strong; file score 44)

```java
   121:     }
   122: 
   123:     public final void i() {
   124:         Set set = b;
   125:         ArrayList arrayList = new ArrayList();
   126:         for (Object obj : set) {
   127:             if (!(((Activity) obj) instanceof ForceUpdateActivity)) {
   128:                 arrayList.add(obj);
   129:             }
   130:         }
   131:         Iterator it2 = arrayList.iterator();
   132:         while (it2.hasNext()) {
   133:             ((Activity) it2.next()).finish();
   134:         }
   135:     }
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:152 (update_strong; file score 44)

```java
   146:     public final boolean l() {
   147:         int iZ1 = Config.Z1();
   148:         return iZ1 == 0 || TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - CheckSelfUpgradeManager.I()) <= ((long) iZ1);
   149:     }
   150: 
   151:     public final void m(Context context, UpgradeConfig upgradeConfig, String str) {
   152:         ForceUpdateActivity.INSTANCE.a(context, upgradeConfig, str);
   153:         i();
   154:     }
   155: 
   156:     public final boolean n(Activity activity) {
   157:         String canonicalName = activity.getClass().getCanonicalName();
   158:         return ((canonicalName != null && StringsKt__StringsKt.S(canonicalName, "intercom", false, 2, null)) || (activity instanceof ForceUpdateActivity) || (activity instanceof NormalUpdateActivity)) ? false : true;
   159:     }
   160: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:165 (update_strong; file score 44)

```java
   159:     }
   160: 
   161:     public final boolean o(UpgradeConfig upgradeConfig, String str) {
   162:         if (rh8.b(upgradeConfig) || !sq5.c() || !upgradeConfig.isStrongUpdate()) {
   163:             return false;
   164:         }
   165:         if (upgradeConfig.isStrictForceUpdate()) {
   166:             return true;
   167:         }
   168:         if (!upgradeConfig.isApkExist() || d) {
   169:             return f(upgradeConfig);
   170:         }
   171:         if (upgradeConfig.isApkMd5Correct()) {
   172:             return true;
   173:         }
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:191 (update_strong; file score 44)

```java
   185:     }
   186: 
   187:     public final boolean r(Context context, UpgradeConfig upgradeConfig, String str) {
   188:         or3.f(context, "context");
   189:         or3.f(str, "popTriggerScene");
   190:         if (upgradeConfig != null) {
   191:             AppForceUpdateHelper appForceUpdateHelper = a;
   192:             UpgradeConfig upgradeConfig2 = appForceUpdateHelper.o(upgradeConfig, str) ? upgradeConfig : null;
   193:             if (upgradeConfig2 != null) {
   194:                 if (appForceUpdateHelper.f(upgradeConfig)) {
   195:                     str = "any_page_visible_force";
   196:                 }
   197:                 appForceUpdateHelper.m(context, upgradeConfig2, str);
   198:                 return true;
   199:             }
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity.java:31 (update_strong; file score 44)

```java
    25: import o.or3;
    26: import o.pg1;
    27: import o.qr2;
    28: import o.xi7;
    29: import o.xy8;
    30: 
    31: @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\bJ\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u
    32: @SourceDebugExtension({"SMAP\nForceUpdateActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceUpdateActivity.kt\ncom/snaptube/premium/selfupgrade/force/ForceUpdateActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,139:1\n262#2,2:140\n*S KotlinDebug\n*F\n+ 1 ForceUpdateActivity.kt\ncom/snaptube/premium/selfupgrade/force/ForceUpdateActivity\n*L\n57#1:140,2\n*E\n"})
    33: public final class ForceUpdateActivity extends BaseUpgradeActivity {
    34: 
    35:     public static final Companion INSTANCE = new Companion(null);
    36:     public static final long t = TimeUnit.SECONDS.toMillis(2);
    37: 
    38:     public long lastClick = -1;
    39: 
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity.java:54 (update_strong; file score 44)

```java
    48:         }
    49: 
    50:         public final void a(Context context, UpgradeConfig upgradeConfig, String str) {
    51:             or3.f(context, "context");
    52:             or3.f(upgradeConfig, "updateConfig");
    53:             or3.f(str, "from");
    54:             NavigationManager.l1(context, new Intent(context, (Class<?>) ForceUpdateActivity.class).putExtra("extra_update_config", upgradeConfig).putExtra("extra_update_from", str));
    55:         }
    56:     }
    57: 
    58:     public static void U1(ForceUpdateActivity forceUpdateActivity, View view) {
    59:         c2(forceUpdateActivity, view);
    60:     }
    61: 
    62:     public static final UpgradeConfig W1(ForceUpdateActivity forceUpdateActivity) {
```

## jadx/sources/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity.java:62 (update_strong; file score 44)

```java
    56:     }
    57: 
    58:     public static void U1(ForceUpdateActivity forceUpdateActivity, View view) {
    59:         c2(forceUpdateActivity, view);
    60:     }
    61: 
    62:     public static final UpgradeConfig W1(ForceUpdateActivity forceUpdateActivity) {
    63:         return forceUpdateActivity.e1();
    64:     }
    65: 
    66:     public static final String X1(ForceUpdateActivity forceUpdateActivity) {
    67:         return forceUpdateActivity.getPopTriggerScene();
    68:     }
    69: 
    70:     public static final void Z1(ForceUpdateActivity forceUpdateActivity) {
```

Snippets shown: 140. Complete bounded hit indexes are in the corresponding TSV files.