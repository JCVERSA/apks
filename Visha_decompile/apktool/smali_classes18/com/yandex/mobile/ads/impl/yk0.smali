.class public final Lcom/yandex/mobile/ads/impl/yk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rb2;

.field private final b:Lcom/yandex/mobile/ads/impl/el2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/rb2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/yk0;-><init>(Lcom/yandex/mobile/ads/impl/rb2;Lcom/yandex/mobile/ads/impl/el2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rb2;Lcom/yandex/mobile/ads/impl/el2;)V
    .locals 1

    .line 3
    const-string v0, "videoAdElementParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xmlHelper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yk0;->a:Lcom/yandex/mobile/ads/impl/rb2;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yk0;->b:Lcom/yandex/mobile/ads/impl/el2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/mb2;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdBuilder"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yk0;->b:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "InLine"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yk0;->b:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yk0;->b:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yk0;->a:Lcom/yandex/mobile/ads/impl/rb2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/rb2;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/mb2$a;->a()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mb2;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-object v1
.end method
