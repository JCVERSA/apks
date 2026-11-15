.class public final Lcom/yandex/mobile/ads/impl/mi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/y70;

.field private final c:Lcom/yandex/mobile/ads/impl/t2;

.field private final d:Lcom/yandex/mobile/ads/impl/e3;

.field private final e:Lcom/yandex/mobile/ads/impl/s2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v2, Lcom/yandex/mobile/ads/impl/y70;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/y70;-><init>(Lcom/yandex/mobile/ads/impl/el2;)V

    .line 3
    new-instance v3, Lcom/yandex/mobile/ads/impl/t2;

    invoke-direct {v3, v1, v2}, Lcom/yandex/mobile/ads/impl/t2;-><init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/y70;)V

    .line 4
    new-instance v4, Lcom/yandex/mobile/ads/impl/e3;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/e3;-><init>()V

    .line 5
    new-instance v5, Lcom/yandex/mobile/ads/impl/s2;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/s2;-><init>()V

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/mi2;-><init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/y70;Lcom/yandex/mobile/ads/impl/t2;Lcom/yandex/mobile/ads/impl/e3;Lcom/yandex/mobile/ads/impl/s2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/y70;Lcom/yandex/mobile/ads/impl/t2;Lcom/yandex/mobile/ads/impl/e3;Lcom/yandex/mobile/ads/impl/s2;)V
    .locals 1

    .line 7
    const-string v0, "mXmlHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionsParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreaksConfigurator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakParametersCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mi2;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 10
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mi2;->b:Lcom/yandex/mobile/ads/impl/y70;

    .line 11
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mi2;->c:Lcom/yandex/mobile/ads/impl/t2;

    .line 12
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/mi2;->d:Lcom/yandex/mobile/ads/impl/e3;

    .line 13
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/mi2;->e:Lcom/yandex/mobile/ads/impl/s2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/wj;)Lcom/yandex/mobile/ads/impl/ki2;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/yandex/mobile/ads/impl/li2;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64EncodingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mi2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "parser"

    invoke-static {v0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    const-string v2, "VMAP"

    invoke-interface {v0, p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "version"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mi2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mi2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AdBreak"

    invoke-static {v6, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mi2;->c:Lcom/yandex/mobile/ads/impl/t2;

    invoke-virtual {v5, v0, p2}, Lcom/yandex/mobile/ads/impl/t2;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/wj;)Lcom/yandex/mobile/ads/impl/p2;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "Extensions"

    invoke-static {v6, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mi2;->b:Lcom/yandex/mobile/ads/impl/y70;

    invoke-virtual {v5, v0, p2}, Lcom/yandex/mobile/ads/impl/y70;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/wj;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mi2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/mi2;->e:Lcom/yandex/mobile/ads/impl/s2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "extensions"

    invoke-static {v2, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/yandex/mobile/ads/impl/u70;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/u70;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PageID"

    invoke-static {v6, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    check-cast v5, Lcom/yandex/mobile/ads/impl/u70;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/yandex/mobile/ads/impl/u70;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/u70;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CategoryID"

    invoke-static {v7, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_8
    move-object v6, v1

    :goto_3
    check-cast v6, Lcom/yandex/mobile/ads/impl/u70;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v1

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/yandex/mobile/ads/impl/u70;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/u70;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SessionID"

    invoke-static {v8, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_b
    move-object v7, v1

    :goto_5
    check-cast v7, Lcom/yandex/mobile/ads/impl/u70;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v1

    :cond_c
    new-instance v6, Lcom/yandex/mobile/ads/impl/r2;

    invoke-direct {v6, v0, v5, v1}, Lcom/yandex/mobile/ads/impl/r2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mi2;->d:Lcom/yandex/mobile/ads/impl/e3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "adBreaks"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakParameters"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {v1, v6}, Lcom/yandex/mobile/ads/impl/p2;->a(Lcom/yandex/mobile/ads/impl/r2;)V

    goto :goto_6

    :cond_d
    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/ki2;

    invoke-direct {p0, v4, p1, v2}, Lcom/yandex/mobile/ads/impl/ki2;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0

    :cond_e
    new-instance p0, Lcom/yandex/mobile/ads/impl/li2;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/li2;-><init>()V

    throw p0
.end method
