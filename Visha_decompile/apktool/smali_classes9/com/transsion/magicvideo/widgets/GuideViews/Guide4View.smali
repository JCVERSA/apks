.class public Lcom/transsion/magicvideo/widgets/GuideViews/Guide4View;
.super Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/transsion/magicvideo/R$layout;->video_gestures_guide_fouth:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public q(Lwoc;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->q(Lwoc;)V

    return-void
.end method

.method public r()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->r()V

    const-string v0, "scale_gesture_open_data.json"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setAndPlayGuideLottie(Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->t()V

    const-string v0, "scale_gesture.json"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setAndPlayGuideLottie(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->u()V

    const-string v0, "scale_gesture_tablet_data.json"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setAndPlayGuideLottie(Ljava/lang/String;)V

    return-void
.end method
