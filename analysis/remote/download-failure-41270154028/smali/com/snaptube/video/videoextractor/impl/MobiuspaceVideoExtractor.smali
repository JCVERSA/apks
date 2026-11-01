.class public Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;
.super Lcom/snaptube/video/videoextractor/impl/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor$VideoTag;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "/video\\?id=(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->g:Ljava/util/regex/Pattern;

    const-string v0, "/video\\?sourceKey=(.*)&videoId=(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->h:Ljava/util/regex/Pattern;

    const-string v0, "480p"

    const-string v1, "360p"

    const-string v2, "720p"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "/video\\?id=(\\d+).*"

    const-string v1, "/video\\?sourceKey=(.*)&videoId=(\\d+).*"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "video.mobiuspace.com"

    invoke-direct {p0, v1, v0}, Lcom/snaptube/video/videoextractor/impl/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_5

    const-string v0, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ge v2, v1, :cond_0

    return-object p0

    :cond_0
    const-string v1, "instagram"

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ins-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "youtube"

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ytb-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "snaptube"

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object p0, v0, v3

    return-object p0

    :cond_3
    const-string v1, "ugc"

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object p0, v0, v3

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "sourceKey is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/net/URI;Ljava/util/Map;)Lcom/snaptube/video/videoextractor/model/VideoInfo;
    .locals 8

    new-instance p2, Lcom/snaptube/video/videoextractor/model/VideoInfo;

    invoke-direct {p2}, Lcom/snaptube/video/videoextractor/model/VideoInfo;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v2, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lo/tt7;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/snaptube/video/videoextractor/ExtractRuleException;

    const-string p2, "video id not found"

    invoke-direct {p1, p2}, Lcom/snaptube/video/videoextractor/ExtractRuleException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v2, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_0
    invoke-virtual {p0, v2}, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, p2, v2, v0}, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->p(Lcom/snaptube/video/videoextractor/model/VideoInfo;Lorg/json/JSONObject;Z)V

    const-string v4, "sourceKey"

    if-nez v0, :cond_2

    const-string v5, "provider"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "whiteGloves"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string p1, "url"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "wm-"

    invoke-virtual {p0, v1, p1, v0}, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/snaptube/video/videoextractor/model/VideoInfo;->setDownloadInfoList(Ljava/util/List;)V

    return-object p2

    :cond_5
    new-instance p1, Lcom/snaptube/video/videoextractor/ExtractException;

    const-string p2, "white gloves pattern match failed"

    invoke-direct {p1, p2}, Lcom/snaptube/video/videoextractor/ExtractException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "http://api.snaptube.app/video/simple/list?ids[]=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/x29;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/tt7;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/snaptube/video/videoextractor/ExtractRuleException;

    const-string v0, "video not found"

    invoke-direct {p1, v0}, Lcom/snaptube/video/videoextractor/ExtractRuleException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lcom/snaptube/video/videoextractor/ExtractRuleException;

    const-string v0, "parse json failed!"

    invoke-direct {p1, v0}, Lcom/snaptube/video/videoextractor/ExtractRuleException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/snaptube/video/videoextractor/ExtractException;

    const-string v0, "resp is black"

    invoke-direct {p1, v0}, Lcom/snaptube/video/videoextractor/ExtractException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 14

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->i:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v12, v2, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p3

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v6, v7, v0

    const-string v6, "http://d3rxegl586f1ks.cloudfront.net/%s/%s.mp4"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    const-string v7, "mp4"

    move-object v6, v12

    move-object/from16 v8, p2

    invoke-static/range {v6 .. v11}, Lo/gs1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/snaptube/video/videoextractor/model/DownloadInfo;

    move-result-object v6

    const-string v7, "video/mp4"

    invoke-virtual {v6, v7}, Lcom/snaptube/video/videoextractor/model/DownloadInfo;->setMime(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor$VideoTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/snaptube/video/videoextractor/model/DownloadInfo;->setTag(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/snaptube/video/videoextractor/model/DownloadInfo;->setCodec(Ljava/lang/Integer;)V

    invoke-static {v12}, Lcom/snaptube/video/videoextractor/model/DownloadInfo$Quality;->getQuality(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/snaptube/video/videoextractor/model/DownloadInfo;->setQuality(Ljava/lang/Integer;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public final p(Lcom/snaptube/video/videoextractor/model/VideoInfo;Lorg/json/JSONObject;Z)V
    .locals 3

    const-string v0, "sourceKey"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/snaptube/video/videoextractor/model/VideoInfo;->setExpires(I)V

    const-string v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snaptube/video/videoextractor/model/VideoInfo;->setTitle(Ljava/lang/String;)V

    const-string v1, "cover"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "large"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snaptube/video/videoextractor/model/VideoInfo;->setThumbnail(Ljava/lang/String;)V

    const-string v1, "duration"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/snaptube/video/videoextractor/model/VideoInfo;->setDuration(I)V

    const-string v1, "id"

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/snaptube/video/videoextractor/model/VideoInfo;->setMetaKey(Ljava/lang/String;)V

    return-void
.end method
