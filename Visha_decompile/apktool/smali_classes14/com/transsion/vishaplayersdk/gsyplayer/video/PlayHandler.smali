.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$InnerPlayHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lvz6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mClarity:Ljava/lang/String;

.field public mClaritySwithIndex:I

.field public mCureentSubTitle:Ljava/lang/String;

.field public mFitType:I

.field public mInitStartTime:J

.field public mIsBannerAd:Z

.field public mIsGravity:Z

.field public mIsGravityLand:Z

.field public mIsInit:Z

.field public mIsLast:Z

.field public mIsLiveShow:Z

.field public mIsLoading:Z

.field public mIsLogin:Z

.field public mIsPip:Z

.field public volatile mIsShowWitchClarity:Z

.field public mIsTaskAutoPlay:Z

.field public mIsTryWatch:Z

.field public mIsVk:Z

.field public mIsYoutube:Z

.field public mMiniDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

.field public mPauseTime:J

.field public mPlayDuration:J

.field public mPlayItemDuration:J

.field public mPlayItemTime:J

.field public mPlayLongPressSeekDuration:J

.field public mPlayStartTime:J

.field public mPlayTime:J

.field public mPlayTitle:Ljava/lang/String;

.field public mPortPlayDuration:J

.field public mPortPlayTime:J

.field public volatile mProgressChange:Z

.field public mProgressOffset:I

.field public mProgressThumb:Landroid/graphics/drawable/Drawable;

.field public mShowMobileData:Z

.field public mShowTryWatch:Z

.field public mSpeed:F

.field public volatile mStartBuffering:J

.field private mSubtileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field public mSubtitleCode:I

.field public mSubtitleCodeByUser:I

.field public mSwitchingResolution:I

.field public volatile mTearing:Z

.field public volatile mTryPriviewTime:I

.field public mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

.field public mVkInitMute:Z

.field public mVkTouchCheck:Z

.field private final networkStatusCallback:Lvz6;

.field private pipListerner:Landroid/view/View$OnClickListener;

.field private playListListener:Landroid/view/View$OnClickListener;

.field private playNextListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCodeByUser:I

    const v2, 0x140ed8

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSpeed:F

    const/4 v2, 0x1

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsInit:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mInitStartTime:J

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravityLand:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsShowWitchClarity:Z

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    const/4 v6, 0x2

    iput v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTryPriviewTime:I

    const/4 v6, -0x3

    iput v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClaritySwithIndex:I

    new-instance v6, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$1;

    invoke-direct {v6, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;)V

    iput-object v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->networkStatusCallback:Lvz6;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPauseTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayLongPressSeekDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowTryWatch:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLiveShow:Z

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTitle:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkInitMute:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkTouchCheck:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ott_subtitle_init"

    invoke-static {v0, v2, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCodeByUser:I

    return-void
.end method

.method public static getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$InnerPlayHandler;->a()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNetCallback(Ljava/lang/String;Lvz6;)V
    .locals 0

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearSubtitle()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtileList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getPipListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->pipListerner:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getPlayListListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->playListListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getPlayNextListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->playNextListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSelectSubtitle()Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtileList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettings()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->fit_screen:I

    sget v11, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_pic_in_pic:I

    const/4 v5, 0x0

    const/16 v2, 0x8

    move-object v0, v6

    move v3, v11

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;-><init>(IIIIZ)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lpp3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;

    sget v8, Lcom/transsion/vishaplayersdk/R$string;->pip:I

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    move v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;-><init>(IIIIZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->feedback:I

    sget v5, Lcom/transsion/vishaplayersdk/R$drawable;->ic_feedabck_audio_w:I

    const/4 v6, 0x0

    const/16 v3, 0xb

    move-object v1, v0

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;-><init>(IIIIZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSpeeds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "2X"

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    const/high16 v1, 0x3fc00000    # 1.5f

    const-string v2, "1.5X"

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    const/high16 v1, 0x3fa00000    # 1.25f

    const-string v2, "1.25X"

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "1.0X"

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    const/high16 v1, 0x3f400000    # 0.75f

    const-string v2, "0.75X"

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "0.5X"

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSubtitleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtileList:Ljava/util/List;

    return-object p0
.end method

.method public hasSubtitles()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtileList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubtitleAvailable(I)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtileList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public registerNetStatus(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Lpz6;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->networkStatusCallback:Lvz6;

    invoke-direct {v1, p1, v2}, Lpz6;-><init>(Landroid/content/Context;Lvz6;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsInit:Z

    return-void
.end method

.method public release()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->playNextListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->pipListerner:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->playListListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->clearSubtitle()V

    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    const v3, 0x140ed8

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSpeed:F

    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravityLand:Z

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPauseTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayLongPressSeekDuration:J

    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressOffset:I

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLiveShow:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public setBannerAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    return-void
.end method

.method public setCustomThumb(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressOffset:I

    return-void
.end method

.method public setPipListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->pipListerner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPlayListListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->playListListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPlayNextListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->playNextListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSubtitleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtileList:Ljava/util/List;

    return-void
.end method

.method public setTaskAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    return-void
.end method
