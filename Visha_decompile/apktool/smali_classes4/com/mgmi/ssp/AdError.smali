.class public Lcom/mgmi/ssp/AdError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_REASON_ANDROID_SDK_NOT_SUPPORT:I = 0xfad

.field public static final ERROR_REASON_DATA_ERROR:I = 0xbbb

.field public static final ERROR_REASON_DOWNLOAD_VIDEO_ERROR:I = 0x138a

.field public static final ERROR_REASON_MID_BLACKLIST:I = 0x1390

.field public static final ERROR_REASON_NATIVE_PERMISION:I = 0xfb2

.field public static final ERROR_REASON_NET_ERROR:I = 0xbba

.field public static final ERROR_REASON_NOAD_C2S_ERROR:I = 0x7d1

.field public static final ERROR_REASON_NOAD_ERROR:I = 0x7d2

.field public static final ERROR_REASON_NOAD_VIP_ERROR:I = 0x7d3

.field public static final ERROR_REASON_NO_EXPOSE_ERROR:I = 0xfa6

.field public static final ERROR_REASON_NO_NET_ERROR:I = 0xbb9

.field public static final ERROR_REASON_OUT_AD_REQUEST:I = 0x138d

.field public static final ERROR_REASON_PACKAGE_ERROR:I = 0x138e

.field public static final ERROR_REASON_PID_BLACKLIST:I = 0x138f

.field public static final ERROR_REASON_PID_ERROR:I = 0xfa3

.field public static final ERROR_REASON_PID_STYLE_ERROR:I = 0xfa4

.field public static final ERROR_REASON_PLAY_VIDEO_ERROR:I = 0x138b

.field public static final ERROR_REASON_RETRY_FORBIDE:I = 0x138c

.field public static final ERROR_REASON_TIME_OUT:I = 0xfab


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mgmi/ssp/AdError;->errorCode:I

    iput-object p2, p0, Lcom/mgmi/ssp/AdError;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/AdError;->errorCode:I

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/AdError;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/AdError;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/AdError;->errorMsg:Ljava/lang/String;

    return-void
.end method
