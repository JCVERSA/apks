.class public Lcom/transsion/vishaads/views/AdBannerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/vishaads/views/AdItemView;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;

.field public e:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/vishaads/views/AdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/vishaads/views/AdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdBannerView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/vishaads/R$layout;->ad_header_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/transsion/vishaads/R$id;->ad_item_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaads/views/AdItemView;

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdBannerView;->b:Lcom/transsion/vishaads/views/AdItemView;

    new-instance v0, Lq5;

    invoke-direct {v0, p0}, Lq5;-><init>(Lcom/transsion/vishaads/views/AdBannerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/vishaads/R$id;->ic_ad_close:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdBannerView;->c:Landroid/widget/ImageView;

    new-instance v0, Lq5;

    invoke-direct {v0, p0}, Lq5;-><init>(Lcom/transsion/vishaads/views/AdBannerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaads/views/AdBannerView;->e:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdBannerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdBannerView;->d:Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/vishaads/R$id;->ic_ad_close:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdBannerView;->d:Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;

    invoke-interface {p0}, Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;->closeAdBanner()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/vishaads/R$id;->ad_item_view:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/vishaads/views/AdBannerView;->d:Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;

    invoke-interface {p1}, Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;->jumpLink()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdBannerView;->e:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-static {p1, v0, p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpFromAdViewResult(Landroid/content/Context;ZLcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAdBannerClick(Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdBannerView;->d:Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;

    return-void
.end method

.method public showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdBannerView;->e:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdBannerView;->b:Lcom/transsion/vishaads/views/AdItemView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaads/views/AdItemView;->showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Z)V

    return-void
.end method
