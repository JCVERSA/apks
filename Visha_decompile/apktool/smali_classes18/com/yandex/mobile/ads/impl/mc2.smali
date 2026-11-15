.class public final Lcom/yandex/mobile/ads/impl/mc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/yk0;

.field private final c:Lcom/yandex/mobile/ads/impl/xk2;

.field private final d:Lcom/yandex/mobile/ads/impl/lx1;

.field private final e:Lcom/yandex/mobile/ads/impl/h32;

.field private final f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 8

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/yk0;

    new-instance v0, Lcom/yandex/mobile/ads/impl/rb2;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/rb2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    invoke-direct {v4, v0}, Lcom/yandex/mobile/ads/impl/yk0;-><init>(Lcom/yandex/mobile/ads/impl/rb2;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/xk2;

    invoke-direct {v5, p1, p2}, Lcom/yandex/mobile/ads/impl/xk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/lx1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/lx1;-><init>()V

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/h32;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/h32;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/mc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/yk0;Lcom/yandex/mobile/ads/impl/xk2;Lcom/yandex/mobile/ads/impl/lx1;Lcom/yandex/mobile/ads/impl/h32;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/yk0;Lcom/yandex/mobile/ads/impl/xk2;Lcom/yandex/mobile/ads/impl/lx1;Lcom/yandex/mobile/ads/impl/h32;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "xmlHelper"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "inlineParser"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "wrapperParser"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sequenceParser"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "idXmlAttributeParser"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mc2;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/mc2;->b:Lcom/yandex/mobile/ads/impl/yk0;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/mc2;->c:Lcom/yandex/mobile/ads/impl/xk2;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/mc2;->d:Lcom/yandex/mobile/ads/impl/lx1;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/mc2;->e:Lcom/yandex/mobile/ads/impl/h32;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mc2;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/mb2;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mc2;->e:Lcom/yandex/mobile/ads/impl/h32;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/h32;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mc2;->d:Lcom/yandex/mobile/ads/impl/lx1;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/lx1;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mc2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x0

    const-string v4, "Ad"

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mc2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mc2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "InLine"

    invoke-static {v4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/mb2$a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mc2;->f:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/mb2$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/mb2$a;->f(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mc2;->b:Lcom/yandex/mobile/ads/impl/yk0;

    invoke-virtual {v3, p1, v0, p2}, Lcom/yandex/mobile/ads/impl/yk0;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v4, "Wrapper"

    invoke-static {v4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/mobile/ads/impl/mb2$a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mc2;->f:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/mb2$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/mb2$a;->f(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mc2;->c:Lcom/yandex/mobile/ads/impl/xk2;

    invoke-virtual {v3, p1, v0, p2}, Lcom/yandex/mobile/ads/impl/xk2;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mc2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-object v3
.end method
