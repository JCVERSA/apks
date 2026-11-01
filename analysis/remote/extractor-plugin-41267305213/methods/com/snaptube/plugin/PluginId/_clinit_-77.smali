.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/snaptube/plugin/PluginId$1;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v1, "VIDEO_SEARCH_ENGINE"

    const/4 v2, 0x0

    const-string v3, "video_search_engine"

    const-string v4, "1.4.54"

    const/4 v5, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/snaptube/plugin/PluginId$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/f06;)V

    sput-object v8, Lcom/snaptube/plugin/PluginId;->VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$2;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v10, "SITE_EXTRACTOR"

    const/4 v11, 0x1

    const-string v12, "site_extractor"

    const-string v13, "2.24.391"

    const/4 v14, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/snaptube/plugin/PluginId$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/g06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$3;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "FFMPEG"

    const/4 v3, 0x2

    const-string v4, "ffmpeg"

    const-string v5, "6.0.5"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/snaptube/plugin/PluginId$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/h06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$4;

    const-string v10, "YOUTUBE_DATA_ADAPTER"

    const/4 v11, 0x3

    const-string v12, "youtube-data-adapter"

    const-string v13, "1.1.87"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/snaptube/plugin/PluginId$4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/i06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->YOUTUBE_DATA_ADAPTER:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$5;

    const-string v2, "AD_INFOMOBI"

    const/4 v3, 0x4

    const-string v4, "ad_infomobi"

    const-string v5, "1.0.103"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/snaptube/plugin/PluginId$5;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/j06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->AD_INFOMOBI:Lcom/snaptube/plugin/PluginId;

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->a()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    sput-object v0, Lcom/snaptube/plugin/PluginId;->$VALUES:[Lcom/snaptube/plugin/PluginId;

    const-string v0, "[0-9]+\\.[0-9]+\\.[0-9]{1,10}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snaptube/plugin/PluginId;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, ""

    sput-object v0, Lcom/snaptube/plugin/PluginId;->sPluginSuccessString:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->sNameToIdentityMap:Ljava/util/Map;

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/snaptube/plugin/PluginId;->sNameToIdentityMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
