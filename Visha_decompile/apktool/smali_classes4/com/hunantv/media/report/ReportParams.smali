.class public Lcom/hunantv/media/report/ReportParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/report/ReportParams$SubVideoType;,
        Lcom/hunantv/media/report/ReportParams$ProxyType;,
        Lcom/hunantv/media/report/ReportParams$VideoType;,
        Lcom/hunantv/media/report/ReportParams$End;,
        Lcom/hunantv/media/report/ReportParams$KeyInfo;,
        Lcom/hunantv/media/report/ReportParams$DRM;,
        Lcom/hunantv/media/report/ReportParams$GlobalSet;
    }
.end annotation


# static fields
.field public static final MAX_LEAVE_VALID_TIME:I = 0x21c

.field public static final SPTP_M3U8_DATA:I = 0x1

.field public static final SPTP_NORMAL:I


# instance fields
.field private abt:Ljava/lang/String;

.field private acp:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private bdid:Ljava/lang/String;

.field private bsid:Ljava/lang/String;

.field private cdnip:Ljava/lang/String;

.field private cf:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private cpn:Ljava/lang/String;

.field private datano:Ljava/lang/String;

.field private def:Ljava/lang/String;

.field private drm:Lcom/hunantv/media/report/ReportParams$DRM;

.field private encinfo:Ljava/lang/String;

.field private end:Lcom/hunantv/media/report/ReportParams$End;

.field private exCommonFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exServiceFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileHash:Ljava/lang/String;

.field private flowt:Ljava/lang/String;

.field private fpa:Ljava/lang/String;

.field private fpid:Ljava/lang/String;

.field private fpn:Ljava/lang/String;

.field private isad:Ljava/lang/String;

.field private isndn:I

.field private istry:Ljava/lang/String;

.field private keyInfo:Lcom/hunantv/media/report/ReportParams$KeyInfo;

.field private lastErrorCodeExtra:I

.field private local_md5:Ljava/lang/String;

.field private mAddrInfoInt:I

.field private mCaseType:I

.field private mDownloadSDKVersion:Ljava/lang/String;

.field private mEnhanceQualityType:I

.field private mHasAd:I

.field private mLeaveTimeS:J

.field private mPlaySessionId:Ljava/lang/String;

.field private mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field private mRenderType:I

.field private mRetryIndex:I

.field private mRouterTimeStamp:J

.field private mVideoSession:Ljava/lang/String;

.field private mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

.field private p2ps:I

.field private pay:Ljava/lang/String;

.field private playPreviewType:Ljava/lang/String;

.field private plid:Ljava/lang/String;

.field private refmdid:Ljava/lang/String;

.field private remote_md5:Ljava/lang/String;

.field private renvtp:I

.field private sptp:I

.field private submit:Ljava/lang/String;

.field private svds:Ljava/lang/String;

.field private svtp:I

.field private switcher:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private vfps:Ljava/lang/String;

.field private vid:Ljava/lang/String;

.field private videoFileHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;

    invoke-direct {v0}, Lcom/hunantv/media/report/ReportParams$KeyInfo;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->keyInfo:Lcom/hunantv/media/report/ReportParams$KeyInfo;

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->NONE:Lcom/hunantv/media/report/ReportParams$VideoType;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    const-string v1, "n"

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    new-instance v1, Lcom/hunantv/media/report/ReportParams$End;

    invoke-direct {v1}, Lcom/hunantv/media/report/ReportParams$End;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->end:Lcom/hunantv/media/report/ReportParams$End;

    const/4 v1, -0x1

    iput v1, p0, Lcom/hunantv/media/report/ReportParams;->mHasAd:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/report/ReportParams;->svtp:I

    iput v1, p0, Lcom/hunantv/media/report/ReportParams;->isndn:I

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->bsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->pay:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->ap:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->plid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpa:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->istry:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->isad:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cf:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->switcher:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->submit:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->bdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cpn:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->vfps:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->playPreviewType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/report/ReportParams;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;

    invoke-direct {v0}, Lcom/hunantv/media/report/ReportParams$KeyInfo;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->keyInfo:Lcom/hunantv/media/report/ReportParams$KeyInfo;

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->NONE:Lcom/hunantv/media/report/ReportParams$VideoType;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    const-string v1, "n"

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    new-instance v1, Lcom/hunantv/media/report/ReportParams$End;

    invoke-direct {v1}, Lcom/hunantv/media/report/ReportParams$End;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->end:Lcom/hunantv/media/report/ReportParams$End;

    const/4 v1, -0x1

    iput v1, p0, Lcom/hunantv/media/report/ReportParams;->mHasAd:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/report/ReportParams;->svtp:I

    iput v1, p0, Lcom/hunantv/media/report/ReportParams;->isndn:I

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->bsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->pay:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->ap:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->plid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpa:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->istry:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->isad:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cf:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->switcher:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->submit:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->bdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cpn:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->vfps:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->playPreviewType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/report/ReportParams;->deepCopy(Lcom/hunantv/media/report/ReportParams;)Lcom/hunantv/media/report/ReportParams;

    return-void
.end method

.method public static createSessionID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoTypeName(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$1;->$SwitchMap$com$hunantv$media$report$ReportParams$VideoType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "NONE"

    return-object p0

    :pswitch_0
    const-string p0, "SMALL_ROUTINE"

    return-object p0

    :pswitch_1
    const-string p0, "SECRET_SPACE"

    return-object p0

    :pswitch_2
    const-string p0, "MINI_FILM"

    return-object p0

    :pswitch_3
    const-string p0, "ALPHA_PLAY"

    return-object p0

    :pswitch_4
    const-string p0, "AUDIO_FM"

    return-object p0

    :pswitch_5
    const-string p0, "TRY_WATCHING"

    return-object p0

    :pswitch_6
    const-string p0, "SOCIAL_AUDIO_CHAT"

    return-object p0

    :pswitch_7
    const-string p0, "VOD_AUDIO"

    return-object p0

    :pswitch_8
    const-string p0, "AUDIO"

    return-object p0

    :pswitch_9
    const-string p0, "GIF_CREATOR"

    return-object p0

    :pswitch_a
    const-string p0, "GIF_PREVIEW_IMAGE"

    return-object p0

    :pswitch_b
    const-string p0, "GIF_PREVIEW_VIDEO"

    return-object p0

    :pswitch_c
    const-string p0, "STAR_ROOM_LIVE"

    return-object p0

    :pswitch_d
    const-string p0, "SOCIAL_PLAY"

    return-object p0

    :pswitch_e
    const-string p0, "HOME_PREVIEW_DY_FEED"

    return-object p0

    :pswitch_f
    const-string p0, "HOME_PREVIEW_FEED"

    return-object p0

    :pswitch_10
    const-string p0, "INTERACTIVE"

    return-object p0

    :pswitch_11
    const-string p0, "VIP_RECOMMEND"

    return-object p0

    :pswitch_12
    const-string p0, "FANTUAN"

    return-object p0

    :pswitch_13
    const-string p0, "VOD_FEED"

    return-object p0

    :pswitch_14
    const-string p0, "IMMERSIVE"

    return-object p0

    :pswitch_15
    const-string p0, "HOME_PREVIEW"

    return-object p0

    :pswitch_16
    const-string p0, "GAME"

    return-object p0

    :pswitch_17
    const-string p0, "AD_BOOT"

    return-object p0

    :pswitch_18
    const-string p0, "FILM"

    return-object p0

    :pswitch_19
    const-string p0, "HOME"

    return-object p0

    :pswitch_1a
    const-string p0, "SHORT"

    return-object p0

    :pswitch_1b
    const-string p0, "AD_MID"

    return-object p0

    :pswitch_1c
    const-string p0, "AD_PRE"

    return-object p0

    :pswitch_1d
    const-string p0, "LOCAL"

    return-object p0

    :pswitch_1e
    const-string p0, "LIVE"

    return-object p0

    :pswitch_1f
    const-string p0, "VOD"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoTypeStr(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$1;->$SwitchMap$com$hunantv$media$report$ReportParams$VideoType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "0"

    return-object p0

    :pswitch_0
    const-string p0, "61"

    return-object p0

    :pswitch_1
    const-string p0, "23"

    return-object p0

    :pswitch_2
    const-string p0, "22"

    return-object p0

    :pswitch_3
    const-string p0, "33"

    return-object p0

    :pswitch_4
    const-string p0, "200"

    return-object p0

    :pswitch_5
    const-string p0, "60"

    return-object p0

    :pswitch_6
    const-string p0, "52"

    return-object p0

    :pswitch_7
    const-string p0, "51"

    return-object p0

    :pswitch_8
    const-string p0, "50"

    return-object p0

    :pswitch_9
    const-string p0, "32"

    return-object p0

    :pswitch_a
    const-string p0, "31"

    return-object p0

    :pswitch_b
    const-string p0, "30"

    return-object p0

    :pswitch_c
    const-string p0, "21"

    return-object p0

    :pswitch_d
    const-string p0, "20"

    return-object p0

    :pswitch_e
    const-string p0, "19"

    return-object p0

    :pswitch_f
    const-string p0, "18"

    return-object p0

    :pswitch_10
    const-string p0, "17"

    return-object p0

    :pswitch_11
    const-string p0, "16"

    return-object p0

    :pswitch_12
    const-string p0, "15"

    return-object p0

    :pswitch_13
    const-string p0, "14"

    return-object p0

    :pswitch_14
    const-string p0, "13"

    return-object p0

    :pswitch_15
    const-string p0, "12"

    return-object p0

    :pswitch_16
    const-string p0, "11"

    return-object p0

    :pswitch_17
    const-string p0, "10"

    return-object p0

    :pswitch_18
    const-string p0, "9"

    return-object p0

    :pswitch_19
    const-string p0, "8"

    return-object p0

    :pswitch_1a
    const-string p0, "7"

    return-object p0

    :pswitch_1b
    const-string p0, "5"

    return-object p0

    :pswitch_1c
    const-string p0, "4"

    return-object p0

    :pswitch_1d
    const-string p0, "3"

    return-object p0

    :pswitch_1e
    const-string p0, "2"

    return-object p0

    :pswitch_1f
    const-string p0, "1"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deepCopy(Lcom/hunantv/media/report/ReportParams;)Lcom/hunantv/media/report/ReportParams;
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->drm:Lcom/hunantv/media/report/ReportParams$DRM;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hunantv/media/report/ReportParams$DRM;

    invoke-direct {v1, v0}, Lcom/hunantv/media/report/ReportParams$DRM;-><init>(Lcom/hunantv/media/report/ReportParams$DRM;)V

    iput-object v1, p0, Lcom/hunantv/media/report/ReportParams;->drm:Lcom/hunantv/media/report/ReportParams$DRM;

    :cond_0
    new-instance v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;

    iget-object v1, p1, Lcom/hunantv/media/report/ReportParams;->keyInfo:Lcom/hunantv/media/report/ReportParams$KeyInfo;

    invoke-direct {v0, v1}, Lcom/hunantv/media/report/ReportParams$KeyInfo;-><init>(Lcom/hunantv/media/report/ReportParams$KeyInfo;)V

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->keyInfo:Lcom/hunantv/media/report/ReportParams$KeyInfo;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->mVideoSession:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mVideoSession:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->mCaseType:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->mCaseType:I

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->mRetryIndex:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->mRetryIndex:I

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->local_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->local_md5:Ljava/lang/String;

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->lastErrorCodeExtra:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->lastErrorCodeExtra:I

    iget-wide v0, p1, Lcom/hunantv/media/report/ReportParams;->mRouterTimeStamp:J

    iput-wide v0, p0, Lcom/hunantv/media/report/ReportParams;->mRouterTimeStamp:J

    new-instance v0, Lcom/hunantv/media/report/ReportParams$End;

    iget-object v1, p1, Lcom/hunantv/media/report/ReportParams;->end:Lcom/hunantv/media/report/ReportParams$End;

    invoke-direct {v0, v1}, Lcom/hunantv/media/report/ReportParams$End;-><init>(Lcom/hunantv/media/report/ReportParams$End;)V

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->end:Lcom/hunantv/media/report/ReportParams$End;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->mDownloadSDKVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->mDownloadSDKVersion:Ljava/lang/String;

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->mHasAd:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->mHasAd:I

    iget-wide v0, p1, Lcom/hunantv/media/report/ReportParams;->mLeaveTimeS:J

    iput-wide v0, p0, Lcom/hunantv/media/report/ReportParams;->mLeaveTimeS:J

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->mRenderType:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->mRenderType:I

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->mEnhanceQualityType:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->mEnhanceQualityType:I

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->mAddrInfoInt:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->mAddrInfoInt:I

    iget v0, p1, Lcom/hunantv/media/report/ReportParams;->p2ps:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams;->p2ps:I

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->exCommonFields:Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/hunantv/media/report/ReportParams;->exCommonFields:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->exCommonFields:Ljava/util/Map;

    :cond_1
    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->exServiceFields:Ljava/util/Map;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/hunantv/media/report/ReportParams;->exServiceFields:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->exServiceFields:Ljava/util/Map;

    :cond_2
    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->bsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->bsid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->pay:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->pay:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->fpid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->ap:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->ap:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->fpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpn:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->url:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->plid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->plid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->fpa:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fpa:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->istry:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->istry:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->isad:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->isad:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->cf:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cf:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->switcher:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->switcher:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->submit:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->submit:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->bdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->bdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->cpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->cpn:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->datano:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->datano:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->refmdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->refmdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->acp:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->acp:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->abt:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->abt:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->fileHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->fileHash:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams;->remote_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams;->remote_md5:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/media/report/ReportParams;->videoFileHash:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->videoFileHash:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public getAbt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->abt:Ljava/lang/String;

    return-object p0
.end method

.method public getAcp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->acp:Ljava/lang/String;

    return-object p0
.end method

.method public getAddrInfoInt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->mAddrInfoInt:I

    return p0
.end method

.method public getAp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->ap:Ljava/lang/String;

    return-object p0
.end method

.method public getBdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->bdid:Ljava/lang/String;

    return-object p0
.end method

.method public getBsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->bsid:Ljava/lang/String;

    return-object p0
.end method

.method public getCaseType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->mCaseType:I

    return p0
.end method

.method public getCdnip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    return-object p0
.end method

.method public getCf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->cf:Ljava/lang/String;

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getCpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->cpn:Ljava/lang/String;

    return-object p0
.end method

.method public getDatano()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->datano:Ljava/lang/String;

    return-object p0
.end method

.method public getDef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadSDKVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->mDownloadSDKVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDrm()Lcom/hunantv/media/report/ReportParams$DRM;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->drm:Lcom/hunantv/media/report/ReportParams$DRM;

    return-object p0
.end method

.method public getEncinfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->encinfo:Ljava/lang/String;

    return-object p0
.end method

.method public getEnd()Lcom/hunantv/media/report/ReportParams$End;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->end:Lcom/hunantv/media/report/ReportParams$End;

    return-object p0
.end method

.method public getEnhanceQualityType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->mEnhanceQualityType:I

    return p0
.end method

.method public getExCommonFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->exCommonFields:Ljava/util/Map;

    return-object p0
.end method

.method public getExServiceFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->exServiceFields:Ljava/util/Map;

    return-object p0
.end method

.method public getFlowt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->flowt:Ljava/lang/String;

    return-object p0
.end method

.method public getFpa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->fpa:Ljava/lang/String;

    return-object p0
.end method

.method public getFpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->fpid:Ljava/lang/String;

    return-object p0
.end method

.method public getFpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->fpn:Ljava/lang/String;

    return-object p0
.end method

.method public getHasAd()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->mHasAd:I

    return p0
.end method

.method public getIsad()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->isad:Ljava/lang/String;

    return-object p0
.end method

.method public getIsndn()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->isndn:I

    return p0
.end method

.method public getIstry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->istry:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->keyInfo:Lcom/hunantv/media/report/ReportParams$KeyInfo;

    return-object p0
.end method

.method public getLastErrorCodeExtra()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->lastErrorCodeExtra:I

    return p0
.end method

.method public getLeaveTimeS()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/report/ReportParams;->mLeaveTimeS:J

    return-wide v0
.end method

.method public getLocalMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->local_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getP2ps()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->p2ps:I

    return p0
.end method

.method public getPay()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->pay:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayPreviewType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->playPreviewType:Ljava/lang/String;

    return-object p0
.end method

.method public getPlaySessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->mPlaySessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getPlid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->plid:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    return-object p0
.end method

.method public getRefmdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->refmdid:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->remote_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getRenderType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->mRenderType:I

    return p0
.end method

.method public getRenvtp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->renvtp:I

    return p0
.end method

.method public getRetryIndex()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->mRetryIndex:I

    return p0
.end method

.method public getRouterTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/report/ReportParams;->mRouterTimeStamp:J

    return-wide v0
.end method

.method public getSptp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->sptp:I

    return p0
.end method

.method public getSubmit()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->submit:Ljava/lang/String;

    return-object p0
.end method

.method public getSvds()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->svds:Ljava/lang/String;

    return-object p0
.end method

.method public getSvtp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams;->svtp:I

    return p0
.end method

.method public getSwitcher()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->switcher:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVfps()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->vfps:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFileHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->videoFileHash:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSession()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->mVideoSession:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    return-object p0
.end method

.method public isP2p()Z
    .locals 3

    iget v0, p0, Lcom/hunantv/media/report/ReportParams;->p2ps:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public setAbt(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->abt:Ljava/lang/String;

    return-object p0
.end method

.method public setAcp(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->acp:Ljava/lang/String;

    return-object p0
.end method

.method public setAddrInfoInt(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->mAddrInfoInt:I

    return-object p0
.end method

.method public setAp(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->ap:Ljava/lang/String;

    return-object p0
.end method

.method public setBdid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->bdid:Ljava/lang/String;

    return-object p0
.end method

.method public setBsid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->bsid:Ljava/lang/String;

    return-object p0
.end method

.method public setCaseType(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->mCaseType:I

    return-object p0
.end method

.method public setCdnip(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    return-object p0
.end method

.method public setCf(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->cf:Ljava/lang/String;

    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public setCpn(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->cpn:Ljava/lang/String;

    return-object p0
.end method

.method public setDatano(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->datano:Ljava/lang/String;

    return-object p0
.end method

.method public setDef(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadSDKVersion(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->mDownloadSDKVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setDrm(Lcom/hunantv/media/report/ReportParams$DRM;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->drm:Lcom/hunantv/media/report/ReportParams$DRM;

    return-object p0
.end method

.method public setEncinfo(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->encinfo:Ljava/lang/String;

    return-object p0
.end method

.method public setEnhanceQualityType(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->mEnhanceQualityType:I

    return-object p0
.end method

.method public setExCommonFields(Ljava/util/Map;)Lcom/hunantv/media/report/ReportParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hunantv/media/report/ReportParams;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->exCommonFields:Ljava/util/Map;

    return-object p0
.end method

.method public setExServiceFields(Ljava/util/Map;)Lcom/hunantv/media/report/ReportParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hunantv/media/report/ReportParams;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->exServiceFields:Ljava/util/Map;

    return-object p0
.end method

.method public setFileHash(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->fileHash:Ljava/lang/String;

    return-object p0
.end method

.method public setFlowt(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->flowt:Ljava/lang/String;

    return-object p0
.end method

.method public setFpa(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->fpa:Ljava/lang/String;

    return-object p0
.end method

.method public setFpid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->fpid:Ljava/lang/String;

    return-object p0
.end method

.method public setFpn(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->fpn:Ljava/lang/String;

    return-object p0
.end method

.method public setHasAd(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->mHasAd:I

    return-object p0
.end method

.method public setIsNewDefName(Z)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->isndn:I

    return-object p0
.end method

.method public setIsad(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->isad:Ljava/lang/String;

    return-object p0
.end method

.method public setIstry(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->istry:Ljava/lang/String;

    return-object p0
.end method

.method public setLastErrorCodeExtra(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->lastErrorCodeExtra:I

    return-object p0
.end method

.method public setLeaveTimeS(J)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/report/ReportParams;->mLeaveTimeS:J

    return-object p0
.end method

.method public setLocalMd5(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->local_md5:Ljava/lang/String;

    return-object p0
.end method

.method public setP2ps(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->p2ps:I

    return-object p0
.end method

.method public setPay(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->pay:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayPreviewType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->playPreviewType:Ljava/lang/String;

    return-void
.end method

.method public setPlaySessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->mPlaySessionId:Ljava/lang/String;

    return-void
.end method

.method public setPlid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->plid:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyType(Lcom/hunantv/media/report/ReportParams$ProxyType;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->mProxyType:Lcom/hunantv/media/report/ReportParams$ProxyType;

    return-object p0
.end method

.method public setRefmdid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->refmdid:Ljava/lang/String;

    return-object p0
.end method

.method public setRemoteMd5(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->remote_md5:Ljava/lang/String;

    return-object p0
.end method

.method public setRenderType(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->mRenderType:I

    return-object p0
.end method

.method public setRenvtp(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->renvtp:I

    return-object p0
.end method

.method public setRetryIndex(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->mRetryIndex:I

    return-object p0
.end method

.method public setRouterTimeStamp(J)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/report/ReportParams;->mRouterTimeStamp:J

    return-object p0
.end method

.method public setSptp(I)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->sptp:I

    return-object p0
.end method

.method public setSubmit(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->submit:Ljava/lang/String;

    return-object p0
.end method

.method public setSvds(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->svds:Ljava/lang/String;

    return-object p0
.end method

.method public setSvtp(Lcom/hunantv/media/report/ReportParams$SubVideoType;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams$SubVideoType;->value()I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/report/ReportParams;->svtp:I

    return-object p0
.end method

.method public setSwitcher(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->switcher:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setVfps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->vfps:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoFileHash(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->videoFileHash:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoSession(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->mVideoSession:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportParams{mVideoSession=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/report/ReportParams;->mVideoSession:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->mVideoType:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdnip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->cdnip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", p2ps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/report/ReportParams;->p2ps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", def=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->def:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", flowt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->flowt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoFileHash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->videoFileHash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", framerate(vfps)=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->vfps:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoIntroduction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/report/ReportParams;->svds:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playPreviewType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams;->playPreviewType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
