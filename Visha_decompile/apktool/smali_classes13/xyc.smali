.class public abstract Lxyc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Laa5;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "playbackContext"

    invoke-virtual {p0, v0}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string v0, "contentPlaybackContext"

    invoke-virtual {p0, v0}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string v0, "signatureTimestamp"

    invoke-virtual {p0, v0, p2}, Laa5;->f(Ljava/lang/String;I)Laa5;

    move-result-object p0

    const-string p2, "referer"

    invoke-virtual {p0, p2, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    return-void
.end method

.method public static b(Laa5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoId"

    invoke-virtual {p0, v0, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    if-eqz p2, :cond_0

    const-string p1, "cpn"

    invoke-virtual {p0, p1, p2}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_0
    const-string p1, "contentCheckOk"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p0

    const-string p1, "racyCheckOk"

    invoke-virtual {p0, p1, p2}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    return-void
.end method

.method public static c(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 10

    invoke-static {}, Ln05;->a()Ln05;

    move-result-object v7

    invoke-static {p1}, Lcxc;->y(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxyc;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v7, Ln05;->a:Ln05$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "https://youtubei.googleapis.com/youtubei/v1/"

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v3, v8

    invoke-static/range {v0 .. v6}, Lcxc;->S(Ln05;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ln05$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v7, v0}, Lcxc;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lxyc;->b(Laa5;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "playerRequest"

    invoke-virtual {p0, p3}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p3

    const-string v0, "videoId"

    invoke-virtual {p3, v0, p2}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p3

    invoke-virtual {p3}, Laa5;->c()Laa5;

    move-result-object p3

    const-string v0, "disablePlayerResponse"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    invoke-virtual {p0}, Laa5;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {}, Lcxc;->x()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://youtubei.googleapis.com/youtubei/v1/reel/reel_item_watch?prettyPrint=false&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&$fields=playerResponse"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p3

    invoke-virtual {p3, p2, v8, p0, p1}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "playerResponse"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lfc8;)Lcom/grack/nanojson/JsonObject;
    .locals 9

    invoke-static {}, Ln05;->b()Ln05;

    move-result-object p4

    invoke-static {p1}, Lcxc;->H(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxyc;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p4, Ln05;->a:Ln05$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p0

    move-object v3, v7

    invoke-static/range {v0 .. v6}, Lcxc;->S(Ln05;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ln05$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, p4, v0}, Lcxc;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lxyc;->b(Laa5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Laa5;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {}, Lcxc;->x()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&id="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p3

    invoke-virtual {p3, p2, v7, p0, p1}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    invoke-static {p0}, Luyc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "2"

    invoke-static {v0}, Lvyc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "X-Goog-Api-Format-Version"

    invoke-static {v1, p0, v2, v0}, Lwyc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;I)Lcom/grack/nanojson/JsonObject;
    .locals 10

    invoke-static {}, Ln05;->c()Ln05;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    const-string v0, "7"

    const-string v1, "7.20250122.15.00"

    invoke-static {v0, v1}, Lcxc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "https://www.youtube.com"

    invoke-static {v0}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "Mozilla/5.0 (PlayStation; PlayStation 4/12.00) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15"

    invoke-static {v0}, Ltyc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v7, Ln05;->a:Ln05$a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    invoke-static/range {v0 .. v6}, Lcxc;->S(Ln05;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ln05$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v7, v0}, Lcxc;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lxyc;->b(Laa5;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://www.youtube.com/watch?v="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lxyc;->a(Laa5;Ljava/lang/String;I)V

    invoke-virtual {p1}, Laa5;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p2

    const-string p3, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

    invoke-virtual {p2, p3, v8, p1, p0}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;Lfc8;I)Lcom/grack/nanojson/JsonObject;
    .locals 10

    invoke-static {}, Ln05;->e()Ln05;

    move-result-object p4

    new-instance v7, Ljava/util/HashMap;

    const-string v0, "56"

    const-string v1, "1.20250121.00.00"

    invoke-static {v0, v1}, Lcxc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "https://www.youtube.com"

    invoke-static {v0}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p4, Ln05;->a:Ln05$a;

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v8

    invoke-static/range {v0 .. v6}, Lcxc;->S(Ln05;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ln05$a;->e:Ljava/lang/String;

    invoke-static {p0, p1, p4, v8}, Lcxc;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lxyc;->b(Laa5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v8, p5}, Lxyc;->a(Laa5;Ljava/lang/String;I)V

    invoke-virtual {p1}, Laa5;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p2

    const-string p3, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

    invoke-virtual {p2, p3, v7, p1, p0}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 10

    invoke-static {}, Ln05;->d()Ln05;

    move-result-object v7

    iget-object v0, v7, Ln05;->a:Ln05$a;

    invoke-static {}, Lcxc;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ln05$a;->b:Ljava/lang/String;

    invoke-static {}, Lcxc;->T()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v7, Ln05;->a:Ln05$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    invoke-static/range {v0 .. v6}, Lcxc;->S(Ln05;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ln05$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v7, v0}, Lcxc;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lxyc;->b(Laa5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Laa5;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p2

    const-string v0, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,playabilityStatus,storyboards,videoDetails"

    invoke-virtual {p2, v0, v8, p1, p0}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method
