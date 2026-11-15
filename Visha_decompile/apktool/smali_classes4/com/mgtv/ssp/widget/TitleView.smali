.class public Lcom/mgtv/ssp/widget/TitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/widget/TitleView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mgtv/ssp/control/a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/mgtv/ssp/widget/TitleView$a;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_title_control_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget p1, Lcom/mgtv/ssp/R$id;->title_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->b:Landroid/widget/LinearLayout;

    .line 5
    sget p1, Lcom/mgtv/ssp/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    new-instance v0, Lcom/mgtv/ssp/widget/TitleView$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/widget/TitleView$1;-><init>(Lcom/mgtv/ssp/widget/TitleView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lcom/mgtv/ssp/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->c:Landroid/widget/TextView;

    .line 8
    sget p1, Lcom/mgtv/ssp/R$id;->sys_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->d:Landroid/widget/TextView;

    .line 9
    sget p1, Lcom/mgtv/ssp/R$id;->iv_battery:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 10
    new-instance v0, Lcom/mgtv/ssp/widget/TitleView$a;

    invoke-direct {v0, p1}, Lcom/mgtv/ssp/widget/TitleView$a;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/mgtv/ssp/widget/TitleView;->e:Lcom/mgtv/ssp/widget/TitleView$a;

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

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_title_control_view:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    sget p1, Lcom/mgtv/ssp/R$id;->title_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->b:Landroid/widget/LinearLayout;

    .line 15
    sget p1, Lcom/mgtv/ssp/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 16
    new-instance p2, Lcom/mgtv/ssp/widget/TitleView$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/widget/TitleView$1;-><init>(Lcom/mgtv/ssp/widget/TitleView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget p1, Lcom/mgtv/ssp/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->c:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/mgtv/ssp/R$id;->sys_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->d:Landroid/widget/TextView;

    .line 19
    sget p1, Lcom/mgtv/ssp/R$id;->iv_battery:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 20
    new-instance p2, Lcom/mgtv/ssp/widget/TitleView$a;

    invoke-direct {p2, p1}, Lcom/mgtv/ssp/widget/TitleView$a;-><init>(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lcom/mgtv/ssp/widget/TitleView;->e:Lcom/mgtv/ssp/widget/TitleView$a;

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

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_title_control_view:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    sget p1, Lcom/mgtv/ssp/R$id;->title_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->b:Landroid/widget/LinearLayout;

    .line 25
    sget p1, Lcom/mgtv/ssp/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 26
    new-instance p2, Lcom/mgtv/ssp/widget/TitleView$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/widget/TitleView$1;-><init>(Lcom/mgtv/ssp/widget/TitleView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/mgtv/ssp/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->c:Landroid/widget/TextView;

    .line 28
    sget p1, Lcom/mgtv/ssp/R$id;->sys_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->d:Landroid/widget/TextView;

    .line 29
    sget p1, Lcom/mgtv/ssp/R$id;->iv_battery:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 30
    new-instance p2, Lcom/mgtv/ssp/widget/TitleView$a;

    invoke-direct {p2, p1}, Lcom/mgtv/ssp/widget/TitleView$a;-><init>(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lcom/mgtv/ssp/widget/TitleView;->e:Lcom/mgtv/ssp/widget/TitleView$a;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/widget/TitleView;)Lcom/mgtv/ssp/control/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/TitleView;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/widget/TitleView;->e:Lcom/mgtv/ssp/widget/TitleView$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/widget/TitleView;->f:Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/TitleView;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/widget/TitleView;->e:Lcom/mgtv/ssp/widget/TitleView$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/widget/TitleView;->f:Z

    :cond_0
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/mgtv/ssp/utils/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 4

    const/16 v0, 0xb

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->isLocked()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/mgtv/ssp/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iget-object v0, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getCutoutHeight()I

    move-result v0

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/widget/TitleView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/mgtv/ssp/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setProgress(II)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
