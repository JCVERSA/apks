.class public Lcom/mgtv/a/c/i;
.super Lcom/mgtv/a/c/h;
.source "SourceFile"


# instance fields
.field private t:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/c/h;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/c/i;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/c/i;->t:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mgtv/a/c/i;->t:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 2
    const-string v0, "VideoPlayerCoverCore"

    const-string v1, "PreRollVideoAd initPlayer"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/a/c/i;->t:Landroid/widget/FrameLayout;

    .line 4
    new-instance v0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-direct {v0, p1}, Lcom/mgmi/ads/api/render/MySimpleDraweeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    .line 5
    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    .line 6
    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setDisableAudioFocus(Z)V

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v0}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    .line 8
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$1;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$2;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$2;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$3;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$3;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$4;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$4;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$5;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$5;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$6;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$6;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V

    .line 14
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$7;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$7;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V

    .line 15
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/i$8;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$8;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V

    .line 16
    iget-object p1, p0, Lcom/mgtv/a/c/i;->t:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mgtv/a/c/i$9;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/i$9;-><init>(Lcom/mgtv/a/c/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 17
    iget-object p1, p0, Lcom/mgtv/a/c/i;->t:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p1, v0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, p0, Lcom/mgtv/a/c/i;->t:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p1, p0, v0}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/mgtv/a/c/h;->a(Ljava/lang/String;)Z

    .line 21
    iget-object p1, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p1}, Lcom/mgmi/model/m;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->r()V

    const/4 p0, 0x1

    return p0
.end method
