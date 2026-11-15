.class public final Lcom/yandex/mobile/ads/impl/mb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bc;

.field private final c:Lcom/yandex/mobile/ads/impl/ac;

.field private final d:Lcom/yandex/mobile/ads/impl/qb;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ac;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ac;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/qb;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {v1, p1, v2, v3}, Lcom/yandex/mobile/ads/impl/qb;-><init>(Landroid/content/Context;ZI)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/mb;-><init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/ac;Lcom/yandex/mobile/ads/impl/qb;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/ac;Lcom/yandex/mobile/ads/impl/qb;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneWebView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneViewProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneMeasureSpecProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mb;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mb;->b:Lcom/yandex/mobile/ads/impl/bc;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mb;->c:Lcom/yandex/mobile/ads/impl/ac;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/mb;->d:Lcom/yandex/mobile/ads/impl/qb;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_adtune_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb;->c:Lcom/yandex/mobile/ads/impl/ac;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "adTuneContainer"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/yandex/mobile/ads/R$id;->adtune_content_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mb;->d:Lcom/yandex/mobile/ads/impl/qb;

    invoke-virtual {v2, v3}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lcom/yandex/mobile/ads/impl/su0;)V

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb;->c:Lcom/yandex/mobile/ads/impl/ac;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/R$id;->adtune_webview_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb;->b:Lcom/yandex/mobile/ads/impl/bc;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method
