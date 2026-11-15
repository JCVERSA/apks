.class public Lcom/mgtv/a/d/c/a/a;
.super Lcom/mgtv/a/d/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/a<",
        "Lcom/mgmi/net/bean/BootAdBean;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/FrameLayout;

.field protected f:Landroid/widget/RelativeLayout$LayoutParams;

.field protected w:Landroid/view/View;

.field private x:Z

.field private y:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/d/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->w:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 16
    iget-object v1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v2, :cond_1

    .line 17
    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v1, v1, Lcom/mgmi/net/bean/BootDataItem;->expand:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    const/16 p0, 0x8

    .line 19
    invoke-static {v0, p0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 21
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->w:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 22
    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    goto :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    :cond_3
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 24
    div-int/lit16 p1, p1, 0x3e8

    .line 25
    iget v0, p0, Lcom/mgtv/a/d/b/a;->h:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BootRender updateTick   totalTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mgtv/a/d/b/a;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ads/AdLog;->i(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz p1, :cond_1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdCountDownText(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/mgmi/R$string;->mgmi_boot_ad_skip:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/a/d/c/a/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgmi/R$layout;->mgmi_boot_ad_view_new:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 4
    sget v1, Lcom/mgmi/R$id;->alertTitleLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    iput-object v0, p0, Lcom/mgtv/a/d/c/a/a;->c:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    .line 5
    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->tv_alert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/a/d/c/a/a;->a:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->adloading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/a/d/c/a/a;->y:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->layout_boot_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->view_skip_expand:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/c/a/a;->w:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->mgmi_ad_dec:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootDataItem;->advertiser:Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->advertiser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/mgmi/R$string;->mgmi_adform_dsc:I

    iget-object v2, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v2, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->advertiser:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/mgmi/R$string;->mgmi_player_ad:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/mgtv/a/d/c/a/a;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mgtv/a/d/c/a/a;->d:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mgtv/a/d/c/a/a;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/a/d/c/a/a;->x:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/a/d/c/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->c:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/c/a/a;->c:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v2, v1, Lcom/mgmi/net/bean/BootDataItem;->hideLog:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 p0, 0x8

    .line 11
    invoke-static {v0, p0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 12
    iget-object v0, v1, Lcom/mgmi/net/bean/BootDataItem;->advertiser:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mgmi/R$string;->mgmi_adform_dsc:I

    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->advertiser:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_player_ad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method

.method public c(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lcom/mgmi/net/bean/BootDataItem;->voice_state:I

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->d(I)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->title:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 10
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    iget-object v2, p0, Lcom/mgtv/a/d/c/a/a;->d:Landroid/view/View;

    invoke-static {v0, v2}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mgtv/a/d/c/a/a;->d:Landroid/view/View;

    invoke-static {v0, v2}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 15
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->f:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_5

    .line 17
    iget-object p0, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-nez v1, :cond_3

    .line 21
    new-instance v1, Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-direct {v1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 26
    iget-object v0, p0, Lcom/mgtv/a/d/c/a/a;->e:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-static {v0, p0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mgtv/a/d/b/a;->g:I

    if-ltz v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2
    :goto_1
    iput-boolean v0, p0, Lcom/mgtv/a/d/b/a;->l:Z

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceVisible(I)V

    goto :goto_3

    .line 5
    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceVisible(I)V

    .line 6
    :goto_3
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->e(I)V

    :cond_5
    return-void
.end method

.method public d(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_1

    .line 8
    iget p1, p1, Lcom/mgmi/net/bean/BootDataItem;->clk_area:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/a/d/b/a;->j:Z

    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/mgtv/a/d/b/a;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceSrc(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6
    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceSrc(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/mgtv/a/d/b/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->c(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method

.method public synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->d(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method

.method public synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a/a;->e(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method
