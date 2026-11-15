.class public Lcom/bytedance/sdk/openadsdk/component/reward/TEQ;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v2, "{\n\t\t\"ad_id\": \"1639941324071955\",\n\t\t\"app\": {\n\t\t\t\"app_name\": \"Mortals cultivate Immortals\",\n\t\t\t\"app_size\": 117644467,\n\t\t\t\"appleid\": \"0\",\n\t\t\t\"comment_num\": 7676,\n\t\t\t\"download_url\": \"\",\n\t\t\t\"package_name\": \"com.xyjx.frxx_190\",\n\t\t\t\"score\": 4\n\t\t},\n\t\t\"appstore_jump_type\": 0,\n\t\t\"button_text\": \"Click me to try\",\n\t\t\"click_url\": [],\n\t\t\"creative_type\": 6,\n\t\t\"description\": \"Open up for cultivating immortals, transform into gods in one day, ascend in two days, and a half-step immortal emperor in three days!\",\n\t\t\"download_conf\": {\n\t\t\t\"auto_control\": \"0\",\n\t\t\t\"auto_open\": 1,\n\t\t\t\"download_mode\": 0,\n\t\t\t\"download_type\": 1,\n\t\t\t\"if_suspend_download\": 1,\n\t\t\t\"support_multiple\": 0\n\t\t},\n\t\t\"ext\": \"{\\\"uid\\\": 65999808247, \\\"package_name\\\": \\\"com.union_test.toutiao\\\", \\\"rit\\\": 901121375, \\\"orit\\\": 900000000, \\\"ad_type\\\": 1, \\\"height\\\": 1920, \\\"pack_time\\\": 1563973281.779855, \\\"pricing\\\": 9, \\\"device_type\\\": \\\"ONEPLUS A3010\\\", \\\"promotion_type\\\": 0, \\\"is_sdk\\\": true, \\\"app_name\\\": \\\"APP\\\\u6d4b\\\\u8bd5\\\\u5a92\\\\u4f53\\\", \\\"uuid\\\": \\\"862561035200672\\\", \\\"os_version\\\": \\\"8.0.0\\\", \\\"creative_id\\\": 1639941324071955, \\\"version_code\\\": \\\"2.3.0\\\", \\\"vid\\\": \\\"1024067,1016869,994044,994829,774109,657281,1001615,995476,1000478,1031346,945702,1025028,953637,987200,1034690,1025294,936646,1022401,1022406,774117,777874,1025520,762536\\\", \\\"uuid_md5\\\": \\\"83d508d01db531b4cf4843d2e41348ed\\\", \\\"width\\\": 1080, \\\"template_rate\\\": 0, \\\"src_type\\\": \\\"app\\\", \\\"img_gen_type\\\": 0, \\\"ad_id\\\": 1639940885031987, \\\"convert_id\\\": 1639938850817027, \\\"img_md5\\\": \\\"\\\", \\\"ad_price\\\": \\\"XThCVgADKYpdOEJWAAMpijdExKKDLYCp1GNXWw\\\", \\\"app_id\\\": \\\"5001121\\\", \\\"source_type\\\": 1, \\\"mac\\\": \\\"C0:EE:FB:F1:D4:80\\\", \\\"imei\\\": \\\"862561035200672\\\", \\\"ug_creative_id\\\": \\\"\\\", \\\"device_id\\\": 38167681029, \\\"landing_type\\\": 3, \\\"language\\\": \\\"golang\\\", \\\"cid\\\": 1639941324071955, \\\"ut\\\": 12, \\\"interaction_type\\\": 4, \\\"open_udid\\\": \\\"\\\", \\\"pos\\\": 5, \\\"req_id\\\": \\\"0781feb2-bf4b-4ff8-be68-9149e288a420u6714\\\", \\\"is_dsp_ad\\\": false, \\\"ad_slot_type\\\": 8, \\\"os_type\\\": null, \\\"os\\\": \\\"android\\\", \\\"template_id\\\": 7000003}\",\n\t\t\"filter_words\": [{\n\t\t\t\"id\": \"4:2\",\n\t\t\t\"is_selected\": false,\n\t\t\t\"name\": \"seen it already\"\n\t\t}, {\n\t\t\t\"id\": \"4:1\",\n\t\t\t\"is_selected\": false,\n\t\t\t\"name\": \"not interested\"\n\t\t}, {\n\t\t\t\"id\": \"4:3\",\n\t\t\t\"is_selected\": false,\n\t\t\t\"name\": \"Too many ads\"\n\t\t}, {\n\t\t\t\"id\": \"6:0\",\n\t\t\t\"is_selected\": false,\n\t\t\t\"name\": \"Report spam\",\n\t\t\t\"options\": [{\n\t\t\t\t\"id\": \"6:1\",\n\t\t\t\t\"is_selected\": false,\n\t\t\t\t\"name\": \"Vulgar porn\"\n\t\t\t}, {\n\t\t\t\t\"id\": \"6:2\",\n\t\t\t\t\"is_selected\": false,\n\t\t\t\t\"name\": \"False fraud\"\n\t\t\t}, {\n\t\t\t\t\"id\": \"6:3\",\n\t\t\t\t\"is_selected\": false,\n\t\t\t\t\"name\": \"Headline exaggeration\"\n\t\t\t}, {\n\t\t\t\t\"id\": \"6:4\",\n\t\t\t\t\"is_selected\": false,\n\t\t\t\t\"name\": \"Suspected plagiarism\"\n\t\t\t}]\n\t\t}],\n\t\t\"image_mode\": 15,\n\t\t\"in_app\": true,\n\t\t\"interaction_type\": 4,\n\t\t\"intercept_flag\": 1,\n\t\t\"is_playable\": true,\n\t\t\"media_ext\": {\n\t\t\t\"price\": 6027\n\t\t},\n\t\t\"play_bar_show_time\": -1,\n\t\t\"play_bar_style\": 0,\n\t\t\"screenshot\": false,\n\t\t\"show_url\": [],\n\t\t\"target_url\": \"\",\n\t\t\"temp_extra_info\": \"{\\\"img_gen_type\\\":0,\\\"img_md5\\\":\\\"\\\",\\\"template_id\\\":7000003}\",\n\t\t\"template_id\": 0,\n\t\t\"title\": \"Open up for cultivating immortals, transform into gods in one day, ascend in two days, and a half-step immortal emperor in three days!\",\n\t\t\"union_special\": 1,\n\t\t\"video\": {\n\t\t\t\"cover_height\": 1280,\n\t\t\t\"cover_url\": \"https://p16-sign-sg.tiktokcdn.com/v0201/fd71964ced204df586b63b9d8fa3198a~tplv-noop.image?x-expires=1618223773&x-signature=kFdR%2FbhUPOk2d9%2BYONSV0inUEMk%3D\",\n\t\t\t\"cover_width\": 720,\n\t\t\t\"endcard\": \"https://api16-endcard-pack-sg.pangle.io/union/endcard/1695802627329057/?rit=901121365&req_id=68ebda22-9cbd-423f-98ce-78f571b6308bu5599&ad_sdk_version=3.6.0.0&os=android&lang=zh&union_imei=702f89a658bd1f189c6e8e24587cd9ce&app_version=%E8%A1%A5%E5%85%85%E4%B8%AD&app_name=&developer_name=%E8%A1%A5%E5%85%85%E4%B8%AD%EF%BC%8C%E5%8F%AF%E4%BA%8E%E5%BA%94%E7%94%A8%E5%AE%98%E7%BD%91%E6%9F%A5%E7%9C%8B&is_dsp=False&lpt=1&style_id=1535776&comment_num=92&like_num=109&share_num=96\",\n\t\t\t\"file_hash\": \"eb321fa50173a95c041b0389a565b006\",\n\t\t\t\"resolution\": \"720x1280\",\n\t\t\t\"size\": 3410585,\n\t\t\t\"video_duration\": 7,\n\t\t\t\"video_url\": \"https://sf16-scmcdn-sg.ibytedtos.com/obj/goofy-sg/ad/pangle/homepage/_next/static/assets/images/reward.c7cdf2f9.mp4\"\n\t\t}\n\t}"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "id"

    .line 20
    .line 21
    const-string v4, "1641194171089955"

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v3, "pkg_name"

    .line 27
    .line 28
    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v3, "download_url"

    .line 36
    .line 37
    const-string v4, "/"

    .line 38
    .line 39
    invoke-static {p2, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v3, "external_url"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v3, "name"

    .line 52
    .line 53
    const-string v4, "Eliminate the virus"

    .line 54
    .line 55
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, "?is_test_tool=1&toutiao_card_params="

    .line 71
    .line 72
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/4 v2, 0x1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_0

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3, p0}, La6/b;->e(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_4

    .line 115
    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_1

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string v0, "Test the downloaded app"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_2

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    move-object p2, p4

    .line 169
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-nez p0, :cond_4

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    if-eqz p0, :cond_3

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_3
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    .line 190
    .line 191
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_3
    if-ne p1, v2, :cond_5

    .line 201
    .line 202
    const/16 p0, 0xf

    .line 203
    .line 204
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    const/4 p0, 0x5

    .line 209
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE(I)V

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_4
    new-instance p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 213
    .line 214
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 218
    .line 219
    .line 220
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 221
    .line 222
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance p1, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/sef;

    .line 237
    .line 238
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sef;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :goto_5
    const-string p1, "PlayableVerityHelper"

    .line 250
    .line 251
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-void
.end method
