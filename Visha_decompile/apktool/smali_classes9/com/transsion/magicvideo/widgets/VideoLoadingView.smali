.class public Lcom/transsion/magicvideo/widgets/VideoLoadingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;-><init>(Lcom/transsion/magicvideo/widgets/VideoLoadingView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->e:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/widgets/VideoLoadingView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/widgets/VideoLoadingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static getTextSpeed(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-string v1, " KB/s"

    const-wide/16 v2, 0x400

    if-ltz v0, :cond_0

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    cmp-long v0, p0, v2

    const-wide/32 v4, 0x100000

    if-ltz v0, :cond_1

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    cmp-long v0, p0, v4

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " MB/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/magicvideo/R$layout;->video_loading_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_net_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->d:Landroid/widget/TextView;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public showOrHideLogo(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
