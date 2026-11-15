.class public final Lcom/yandex/mobile/ads/impl/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dl2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dl2<",
        "Lcom/yandex/mobile/ads/impl/uu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/sr0;

.field private final c:Lcom/yandex/mobile/ads/impl/yu;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/sr0;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/sr0;-><init>()V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/yu;

    invoke-direct {v5, p1, p2}, Lcom/yandex/mobile/ads/impl/yu;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/bv;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/sr0;Lcom/yandex/mobile/ads/impl/yu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/sr0;Lcom/yandex/mobile/ads/impl/yu;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "xmlHelper"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linearCreativeParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "creativeExtensionsParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bv;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bv;->b:Lcom/yandex/mobile/ads/impl/sr0;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bv;->c:Lcom/yandex/mobile/ads/impl/yu;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/lang/Object;
    .locals 5

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bv;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Creative"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bv;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v3, "attributeName"

    const-string v4, "id"

    invoke-static {v1, p1, v0, v4, v3}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/uu$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/uu$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/uu$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/uu$a;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bv;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bv;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Linear"

    invoke-static {v4, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bv;->b:Lcom/yandex/mobile/ads/impl/sr0;

    invoke-virtual {v0, p1, v1, p2}, Lcom/yandex/mobile/ads/impl/sr0;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/uu$a;Lcom/yandex/mobile/ads/impl/xj;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "CreativeExtensions"

    invoke-static {v4, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bv;->c:Lcom/yandex/mobile/ads/impl/yu;

    invoke-virtual {v3, p1, p2}, Lcom/yandex/mobile/ads/impl/yu;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/xu;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/uu$a;->a(Lcom/yandex/mobile/ads/impl/xu;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bv;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/uu$a;->a()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v2

    :cond_4
    return-object v2
.end method
