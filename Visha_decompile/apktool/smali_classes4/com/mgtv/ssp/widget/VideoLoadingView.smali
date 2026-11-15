.class public Lcom/mgtv/ssp/widget/VideoLoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/b;


# instance fields
.field private a:Lcom/mgtv/ssp/widget/FloatLoadingView;

.field private b:Lcom/mgtv/ssp/control/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "VideoLoadingView"

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$layout;->mgplayer_float_container:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget p1, Lcom/mgtv/ssp/R$id;->float_loading:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/widget/FloatLoadingView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->a:Lcom/mgtv/ssp/widget/FloatLoadingView;

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const-string p1, "VideoLoadingView"

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mgtv/ssp/R$layout;->mgplayer_float_container:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    sget p1, Lcom/mgtv/ssp/R$id;->float_loading:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/widget/FloatLoadingView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->a:Lcom/mgtv/ssp/widget/FloatLoadingView;

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-string p1, "VideoLoadingView"

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mgtv/ssp/R$layout;->mgplayer_float_container:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    sget p1, Lcom/mgtv/ssp/R$id;->float_loading:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/widget/FloatLoadingView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->a:Lcom/mgtv/ssp/widget/FloatLoadingView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->a:Lcom/mgtv/ssp/widget/FloatLoadingView;

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/widget/FloatLoadingView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->b:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public onLockStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@onPlayStateChanged VideoLoadingView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "playState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    :pswitch_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VideoLoadingView;->a:Lcom/mgtv/ssp/widget/FloatLoadingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/widget/FloatLoadingView;->show(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
