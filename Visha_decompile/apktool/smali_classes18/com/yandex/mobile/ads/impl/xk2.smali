.class public final Lcom/yandex/mobile/ads/impl/xk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/rb2;

.field private final c:Lcom/yandex/mobile/ads/impl/vk2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/rb2;

    invoke-direct {v4, p1, p2}, Lcom/yandex/mobile/ads/impl/rb2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/vk2;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/vk2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/xk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/rb2;Lcom/yandex/mobile/ads/impl/vk2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/rb2;Lcom/yandex/mobile/ads/impl/vk2;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "xmlHelper"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdElementParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "wrapperConfigurationParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xk2;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/xk2;->b:Lcom/yandex/mobile/ads/impl/rb2;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/xk2;->c:Lcom/yandex/mobile/ads/impl/vk2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/mb2;
    .locals 4
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

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xk2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Wrapper"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xk2;->c:Lcom/yandex/mobile/ads/impl/vk2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowMultipleAds"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "followAdditionalWrappers"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/uk2;

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/uk2;-><init>(ZZ)V

    invoke-virtual {p2, v2}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Lcom/yandex/mobile/ads/impl/uk2;)Lcom/yandex/mobile/ads/impl/mb2$a;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xk2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xk2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VASTAdTagURI"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xk2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/mb2$a;->h(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xk2;->b:Lcom/yandex/mobile/ads/impl/rb2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/rb2;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/mb2$a;->a()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object p0

    return-object p0
.end method
