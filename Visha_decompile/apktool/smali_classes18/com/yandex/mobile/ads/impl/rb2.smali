.class public final Lcom/yandex/mobile/ads/impl/rb2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/cl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/uu;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/cl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/wa2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ai2;

.field private final e:Lcom/yandex/mobile/ads/impl/vb2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 8

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/cl2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/bv;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/bv;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    const-string v1, "Creatives"

    const-string v2, "Creative"

    invoke-direct {v4, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/cl2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ab2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ab2;-><init>()V

    const-string v1, "AdVerifications"

    const-string v2, "Verification"

    invoke-direct {v5, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/ai2;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/ai2;-><init>()V

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/vb2;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/vb2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/rb2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/ai2;Lcom/yandex/mobile/ads/impl/vb2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/ai2;Lcom/yandex/mobile/ads/impl/vb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/el2;",
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/uu;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/wa2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ai2;",
            "Lcom/yandex/mobile/ads/impl/vb2;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "xmlHelper"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "creativeArrayParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "verificationArrayParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewableImpressionParser"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdExtensionsParser"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rb2;->b:Lcom/yandex/mobile/ads/impl/cl2;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/rb2;->c:Lcom/yandex/mobile/ads/impl/cl2;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/rb2;->d:Lcom/yandex/mobile/ads/impl/ai2;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/rb2;->e:Lcom/yandex/mobile/ads/impl/vb2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/mb2$a;Lcom/yandex/mobile/ads/impl/xj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdBuilder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64EncodingParameters"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Impression"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "ViewableImpression"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->d:Lcom/yandex/mobile/ads/impl/ai2;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/ai2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/zh2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Lcom/yandex/mobile/ads/impl/zh2;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto/16 :goto_0

    :cond_1
    const-string v1, "Error"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "Survey"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->g(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto/16 :goto_0

    :cond_3
    const-string v1, "Description"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_4
    const-string v1, "AdTitle"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_5
    const-string v1, "AdSystem"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_6
    const-string v1, "Creatives"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->b:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Ljava/util/ArrayList;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_7
    const-string v1, "AdVerifications"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->c:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_8
    const-string v1, "Extensions"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->e:Lcom/yandex/mobile/ads/impl/vb2;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/vb2;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/ub2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/mb2$a;->a(Lcom/yandex/mobile/ads/impl/ub2;)Lcom/yandex/mobile/ads/impl/mb2$a;

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    return-void
.end method
