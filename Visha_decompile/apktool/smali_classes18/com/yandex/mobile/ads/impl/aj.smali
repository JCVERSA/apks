.class public final Lcom/yandex/mobile/ads/impl/aj;
.super Lcom/yandex/mobile/ads/impl/ko1;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/oj;


# instance fields
.field private final C:Lcom/yandex/mobile/ads/impl/np0;

.field private final D:Lcom/yandex/mobile/ads/impl/zi;

.field private final E:Lcom/yandex/mobile/ads/impl/qe2;

.field private final F:Lcom/yandex/mobile/ads/impl/cj;

.field private final G:Lcom/yandex/mobile/ads/impl/bj;

.field private final H:Lcom/yandex/mobile/ads/impl/sg0;

.field private I:Lcom/yandex/mobile/ads/impl/ej;

.field private J:Lcom/yandex/mobile/ads/impl/ej;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/cj;Lcom/yandex/mobile/ads/impl/bj;Lcom/yandex/mobile/ads/impl/sg0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEventController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdSizeValidator"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseControllerFactoryCreator"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlAdResponseReportManager"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/yandex/mobile/ads/impl/ko1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/g5;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/aj;->E:Lcom/yandex/mobile/ads/impl/qe2;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/aj;->F:Lcom/yandex/mobile/ads/impl/cj;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/aj;->G:Lcom/yandex/mobile/ads/impl/bj;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/aj;->H:Lcom/yandex/mobile/ads/impl/sg0;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/aj;->a(Lcom/yandex/mobile/ads/impl/np0;)V

    invoke-virtual {p3, p8}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/sg0;)V

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/np0;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zi;->a()V

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->J:Lcom/yandex/mobile/ads/impl/ej;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ej;->getAdInfo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final C()Lcom/yandex/mobile/ads/impl/np0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    return-object p0
.end method

.method public final D()Lcom/yandex/mobile/ads/impl/qe2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->E:Lcom/yandex/mobile/ads/impl/qe2;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->H:Lcom/yandex/mobile/ads/impl/sg0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/sg0;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->H:Lcom/yandex/mobile/ads/impl/sg0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/sg0;->a(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->G:Lcom/yandex/mobile/ads/impl/bj;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/bj;->a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/fj;

    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/fj;->a(Lcom/yandex/mobile/ads/impl/aj;)Lcom/yandex/mobile/ads/impl/ej;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->J:Lcom/yandex/mobile/ads/impl/ej;

    .line 13
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ej;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ys;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/zi;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/ys;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/aj;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ko1;->d()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/ys;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/zg2;->a(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->I:Lcom/yandex/mobile/ads/impl/ej;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/aj;->J:Lcom/yandex/mobile/ads/impl/ej;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/yandex/mobile/ads/impl/ej;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v1, v3, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/yandex/mobile/ads/impl/ej;->a(Landroid/content/Context;)V

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ck;->e()V

    return-void
.end method

.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zi;->b()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->D:Lcom/yandex/mobile/ads/impl/zi;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zi;->c()V

    return-void
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ck;->u()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/aj;->I:Lcom/yandex/mobile/ads/impl/ej;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/aj;->J:Lcom/yandex/mobile/ads/impl/ej;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/ej;

    aput-object v1, v2, v0

    aget-object v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/ej;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->J:Lcom/yandex/mobile/ads/impl/ej;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->I:Lcom/yandex/mobile/ads/impl/ej;

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/gz1$a;->d:Lcom/yandex/mobile/ads/impl/gz1$a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->C:Lcom/yandex/mobile/ads/impl/np0;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method public final z()Z
    .locals 4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj;->F:Lcom/yandex/mobile/ads/impl/cj;

    invoke-static {v3, v2, v0, p0, v1}, Lcom/yandex/mobile/ads/impl/iz1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/j9;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
