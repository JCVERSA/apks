.class public Lxt4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxt4$c;,
        Lxt4$b;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Lcom/cloud/hisavana/sdk/b0;

.field public c:Ljava/util/List;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public final h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lxt4;->c:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lxt4;->d:F

    iput v0, p0, Lxt4;->e:F

    iput v0, p0, Lxt4;->f:F

    iput v0, p0, Lxt4;->g:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxt4;->h:Ljava/util/Map;

    iput-object p1, p0, Lxt4;->b:Lcom/cloud/hisavana/sdk/b0;

    return-void
.end method

.method public static synthetic a(Lxt4;)F
    .locals 0

    iget p0, p0, Lxt4;->d:F

    return p0
.end method

.method public static synthetic b(Lxt4;F)F
    .locals 0

    iput p1, p0, Lxt4;->d:F

    return p1
.end method

.method public static synthetic c(Lxt4;J)J
    .locals 0

    iput-wide p1, p0, Lxt4;->a:J

    return-wide p1
.end method

.method public static synthetic h(Lxt4;)F
    .locals 0

    iget p0, p0, Lxt4;->e:F

    return p0
.end method

.method public static synthetic i(Lxt4;F)F
    .locals 0

    iput p1, p0, Lxt4;->e:F

    return p1
.end method

.method public static synthetic l(Lxt4;)F
    .locals 0

    iget p0, p0, Lxt4;->f:F

    return p0
.end method

.method public static synthetic m(Lxt4;F)F
    .locals 0

    iput p1, p0, Lxt4;->f:F

    return p1
.end method

.method public static synthetic o(Lxt4;)F
    .locals 0

    iget p0, p0, Lxt4;->g:F

    return p0
.end method

.method public static synthetic p(Lxt4;F)F
    .locals 0

    iput p1, p0, Lxt4;->g:F

    return p1
.end method

.method public static synthetic q(Lxt4;)J
    .locals 2

    iget-wide v0, p0, Lxt4;->a:J

    return-wide v0
.end method

.method public static synthetic r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;
    .locals 0

    iget-object p0, p0, Lxt4;->b:Lcom/cloud/hisavana/sdk/b0;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-virtual {p0}, Lxt4;->n()V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo v0, "ssp"

    const-string v1, "destroy"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/view/View;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lxt4;->h:Ljava/util/Map;

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lxt4$c;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lxt4$c;-><init>(Lxt4;Lxt4$a;)V

    new-instance v1, Lxt4$b;

    invoke-direct {v1, p0, p4, p3}, Lxt4$b;-><init>(Lxt4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lxt4;->g(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    iget-object v0, p0, Lxt4;->b:Lcom/cloud/hisavana/sdk/b0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/b0;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lxt4;->b:Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/b0;->W(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    return-void
.end method

.method public final g(Landroid/view/View;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adxAdChoice"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "image_webview"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lxt4;->c:Ljava/util/List;

    return-object p0
.end method

.method public k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lxt4;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lx93;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lxt4;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lxt4;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lxt4;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
