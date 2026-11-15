.class public Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;
.super Lcom/mgtv/ssp/adapter/BaseVideoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/mgtv/ssp/adapter/BaseHolder;ILcom/mgtv/ssp/bean/VideoBean;)V
    .locals 5

    .line 5
    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    instance-of p3, p1, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    if-eqz p3, :cond_5

    .line 7
    move-object p3, p1

    check-cast p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    .line 8
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->setVideoInfo(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    .line 10
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->b()V

    .line 11
    :cond_1
    iput-object p0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->a:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 12
    iput p2, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->d:I

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getUgcName()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getSubTitle()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    .line 17
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v2, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v2, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object p0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object v0, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p3, p3, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->j:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_2
    iput p2, p1, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 2
    sget p0, Lcom/mgtv/ssp/R$layout;->item_immer_ad_layout:I

    return p0
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;ILcom/mgtv/ssp/bean/VideoBean;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/mgtv/ssp/R$layout;->mgplayer_immersion_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public d(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d(I)V

    new-instance v0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;-><init>(Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;I)V

    const-wide/16 p0, 0xa

    invoke-static {v0, p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public e(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;->d(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
