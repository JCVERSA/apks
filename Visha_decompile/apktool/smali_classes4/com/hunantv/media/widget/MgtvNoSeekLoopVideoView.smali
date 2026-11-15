.class public Lcom/hunantv/media/widget/MgtvNoSeekLoopVideoView;
.super Lcom/hunantv/media/widget/MgtvLoopVideoView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hunantv/media/widget/IVideoView$Configuration;

    invoke-direct {v0}, Lcom/hunantv/media/widget/IVideoView$Configuration;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/IVideoView$Configuration;->setLoopMode(Z)Lcom/hunantv/media/widget/IVideoView$Configuration;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;-><init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvNoSeekLoopVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvNoSeekLoopVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvLoopVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvNoSeekLoopVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;-><init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvNoSeekLoopVideoView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    return-void
.end method


# virtual methods
.method public resetVideoPathLoopImpl(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetVideoPathLoopImpl mMediaPlayer == null return"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetLoopPlay()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resumeLoadData()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->configImgoPlayer()V

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isTextureView()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetVideoPathLoopImpl mSurfaceHolder == null wait surface attach to window"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    goto :goto_1

    :cond_2
    :goto_0
    iget v7, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    if-lez v7, :cond_3

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchLoopSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    iput v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    goto :goto_1

    :cond_3
    iget-object v8, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v9, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    const/4 v13, 0x0

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchLoopSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public seekTo(IZ)V
    .locals 0

    .line 2
    return-void
.end method

.method public setStartPosMs(I)V
    .locals 0

    return-void
.end method
