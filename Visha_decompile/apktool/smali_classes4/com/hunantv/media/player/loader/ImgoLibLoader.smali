.class public Lcom/hunantv/media/player/loader/ImgoLibLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;
    }
.end annotation


# static fields
.field private static final LIB_NAME_CACHE:Ljava/lang/String; = "ImgoCache"

.field private static final LIB_NAME_CPP_SHARED:Ljava/lang/String; = "c++_shared"

.field private static final LIB_NAME_DS:Ljava/lang/String; = "Imgods"

.field private static final LIB_NAME_EXS:Ljava/lang/String; = "Imgoexs"

.field private static final LIB_NAME_FFMEPG:Ljava/lang/String; = "ImgoFfmpeg"

.field private static final LIB_NAME_FFMEPG4:Ljava/lang/String; = "ImgoFfmpeg4"

.field private static final LIB_NAME_HELP:Ljava/lang/String; = "ImgoHelp"

.field private static final LIB_NAME_IMGOHAND:Ljava/lang/String; = "ImgoHand"

.field private static final LIB_NAME_IMGOHAND_JNI:Ljava/lang/String; = "ImgoHand_jni"

.field private static final LIB_NAME_IMGOVSR:Ljava/lang/String; = "ImgoVsr"

.field private static final LIB_NAME_MGTV_DRM:Ljava/lang/String; = "mgtvdrm"

.field private static final LIB_NAME_OPENSSL_CRYPT_1_0:Ljava/lang/String; = "crypto"

.field private static final LIB_NAME_OPENSSL_CRYPT_1_1:Ljava/lang/String; = "crypto.1.1"

.field private static final LIB_NAME_OPENSSL_SSL_1_0:Ljava/lang/String; = "ssl"

.field private static final LIB_NAME_OPENSSL_SSL_1_1:Ljava/lang/String; = "ssl.1.1"

.field private static final LIB_NAME_PLAYER_DRM_PRE:Ljava/lang/String; = "ImgoMediaPlayer_drm_"

.field private static final LIB_NAME_PLAYER_NODRM_PRE:Ljava/lang/String; = "ImgoMediaPlayer_nodrm_"

.field private static final LIB_NAME_PLAYER_NODS_PRE:Ljava/lang/String; = "ImgoMediaPlayer_nods_"

.field private static final LIB_NAME_PLAYER_PRE:Ljava/lang/String; = "ImgoMediaPlayer_"

.field private static final LIB_NAME_WANOS_DECODER:Ljava/lang/String; = "wanosdecoder"

.field private static final LIB_NAME_WANOS_VIRTUAL:Ljava/lang/String; = "wanosvirtual"

.field private static final LIB_NAME_WANOS_VIRTUALV2:Ljava/lang/String; = "wanosvirtualV2"

.field private static final LIB_NAME_WASABI_DRM:Ljava/lang/String; = "WasabiJni"

.field private static final TAG:Ljava/lang/String; = "ImgoLibLoader"

.field private static volatile sInjectLibDirectory:Ljava/lang/String; = null

.field private static sInjectorCallback:Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback; = null

.field private static sInstance:Lcom/hunantv/media/player/loader/ImgoLibLoader; = null

.field private static useOpensslVersion:I = 0x2


# instance fields
.field private mBackUpLoaderSoMsg:Ljava/lang/String;

.field private mCPPSharedLibLoadErrorMsg:Ljava/lang/String;

.field private mDrmLibLoadErrorMsg:Ljava/lang/String;

.field private volatile mDsLibLoadError:Z

.field private mDsLibLoadErrorMsg:Ljava/lang/String;

.field private mDsLibLoadErrorMsgReport:Z

.field private mImgoVsrLibLoadErrorMsg:Ljava/lang/String;

.field private volatile mIsAllPlayerLibLoaded:Z

.field private mIsBackUpLoaderSuccess:Z

.field private volatile mIsCPPSharedLibLoaded:Z

.field private volatile mIsCacheLibLoaded:Z

.field private volatile mIsDsLibLoaded:Z

.field private volatile mIsExsLibLoaded:Z

.field private volatile mIsFFmpegLibLoaded:Z

.field private volatile mIsHelpLibLoaded:Z

.field private volatile mIsImgoHandJniLibLoaded:Z

.field private volatile mIsImgoHandLibLoaded:Z

.field private volatile mIsImgoVsrLibLoaded:Z

.field private volatile mIsMgtvDrmLibLoaded:Z

.field private volatile mIsOpenSSLLibLoaded:Z

.field private volatile mIsPlayerLibLoaded:Z

.field private volatile mIsWanosDecoderLibLoaded:Z

.field private volatile mIsWanosVirtualLibLoaded:Z

.field private volatile mIsWasabiDrmLibLoaded:Z

.field private mSync:Ljava/lang/Object;

.field private mWanosLibLoadErrorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsAllPlayerLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsHelpLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsDsLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCacheLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWanosDecoderLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWanosVirtualLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsFFmpegLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsExsLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWasabiDrmLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsMgtvDrmLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsOpenSSLLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCPPSharedLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoVsrLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandJniLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsPlayerLibLoaded:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDsLibLoadError:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDsLibLoadErrorMsgReport:Z

    const-string v1, "n"

    iput-object v1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDrmLibLoadErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mWanosLibLoadErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mCPPSharedLibLoadErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mImgoVsrLibLoadErrorMsg:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsBackUpLoaderSuccess:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mBackUpLoaderSoMsg:Ljava/lang/String;

    return-void
.end method

.method public static exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exLoadLibrary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgoLibLoader"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/hunantv/media/player/utils/SystemUtil;->getPrimaryCpuAbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->preInjectLoad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "preInjectLoad Throwable "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/hunantv/media/player/loader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "preInjectLoad Exception "

    goto :goto_1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "preInjectLoad UnsatisfiedLinkError "

    goto :goto_1

    :cond_0
    :goto_4
    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "no preInjectLoad,use System.loadLibrary"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p0, p1}, Lcom/hunantv/media/player/loader/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsBackUpLoaderSuccess:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    iget-object v1, v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mBackUpLoaderSoMsg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mBackUpLoaderSoMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :cond_2
    :goto_5
    return-void

    :goto_6
    new-instance v0, Lcom/hunantv/media/player/loader/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mapID(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/player/loader/c;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;
    .locals 2

    const-class v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInstance:Lcom/hunantv/media/player/loader/ImgoLibLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/player/loader/ImgoLibLoader;

    invoke-direct {v1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;-><init>()V

    sput-object v1, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInstance:Lcom/hunantv/media/player/loader/ImgoLibLoader;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInstance:Lcom/hunantv/media/player/loader/ImgoLibLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isLegalFilePath(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static mapID(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "ImgoFfmpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x64

    return p0

    :cond_1
    const-string v1, "ImgoHelp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x65

    return p0

    :cond_2
    const-string v1, "Imgods"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x66

    return p0

    :cond_3
    const-string v1, "ImgoMediaPlayer_nods_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p0, 0x67

    return p0

    :cond_4
    const-string v1, "ImgoMediaPlayer_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0x68

    return p0

    :cond_5
    const-string v1, "ImgoCache"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x69

    return p0

    :cond_6
    const-string v1, "ImgoMediaPlayer_nodrm_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p0, 0x6a

    return p0

    :cond_7
    const-string v1, "wanosdecoder"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x6b

    return p0

    :cond_8
    const-string v1, "wanosvirtual"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x6c

    return p0

    :cond_9
    const-string v1, "WasabiJni"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p0, 0x6d

    return p0

    :cond_a
    const-string v1, "wanosvirtualV2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x6e

    return p0

    :cond_b
    :goto_0
    return v0
.end method

.method private static preInjectLoad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    sget-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectLibDirectory:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectLibDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectLibDirectory:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isLegalFilePath(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "ImgoLibLoader"

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preInjectLoad load success:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preInjectLoad load failed:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public static setsInjectorCallback(Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectorCallback:Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;

    return-void
.end method

.method private tryLoadAllLibraries(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsAllPlayerLibLoaded:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectorCallback:Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectLibDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectorCallback:Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;

    invoke-interface {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;->onInjectLibDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectLibDirectory:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadOpenSSLLib(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadFFmpegLib(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadHelpLib(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadExsLib(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadWanosDecoderLib(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadWanosVirtualLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mWanosLibLoadErrorMsg:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadPlayerLib(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsAllPlayerLibLoaded:Z

    sget-object p1, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectorCallback:Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "libmediaplayer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getLibFullVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadedLibMeta libmediaplayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getLibFullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgoLibLoader"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->sInjectorCallback:Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;

    invoke-interface {v0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader$IInjectorCallback;->onLoadedLibMeta(Ljava/lang/String;)V

    :cond_1
    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsAllPlayerLibLoaded:Z

    return p0
.end method

.method private tryLoadCPPSharedLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCPPSharedLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "c++_shared"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCPPSharedLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadCacheLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCacheLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "ImgoCache"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCacheLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadDsLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsDsLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "Imgods"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsDsLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadExsLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsExsLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "Imgoexs"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsExsLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadFFmpeg20Lib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsFFmpegLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "ImgoFfmpeg4"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsFFmpegLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadFFmpegLib(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadFFmpeg20Lib(Landroid/content/Context;)V

    return-void
.end method

.method private tryLoadHelpLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsHelpLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "ImgoHelp"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsHelpLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadImgoHandJniLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandJniLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "ImgoHand_jni"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandJniLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadImgoHandLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "ImgoHand"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadImgoVsrLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoVsrLibLoaded:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->supportX86()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ImgoLibLoader"

    const-string p1, "is X86, don\'t tryLoadImgoVsrLib!"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "ImgoVsr"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoVsrLibLoaded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private tryLoadMgtvDrmLib(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->useOpensslVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsOpenSSLLibLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsMgtvDrmLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "mgtvdrm"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsMgtvDrmLibLoaded:Z

    :cond_0
    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsMgtvDrmLibLoaded:Z

    return p0
.end method

.method private tryLoadMgtvDrmLibNoThrow(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadMgtvDrmLib(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private tryLoadOpenSSLLib(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsOpenSSLLibLoaded:Z

    if-nez v0, :cond_1

    sget v0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->useOpensslVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "crypto"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "ssl"

    :goto_0
    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "crypto.1.1"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "ssl.1.1"

    goto :goto_0

    :goto_1
    iput-boolean v1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsOpenSSLLibLoaded:Z

    :cond_1
    return-void
.end method

.method private tryLoadPlayer20Lib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsPlayerLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "ImgoMediaPlayer_5.5.3"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsPlayerLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadPlayerLib(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadPlayer20Lib(Landroid/content/Context;)V

    return-void
.end method

.method private tryLoadWanosDecoderLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWanosDecoderLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "wanosdecoder"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWanosDecoderLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadWanosVirtualLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWanosVirtualLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "wanosvirtual"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWanosVirtualLibLoaded:Z

    :cond_0
    return-void
.end method

.method private tryLoadWasabiDrmLib(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/hunantv/media/player/loader/c;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWasabiDrmLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "WasabiJni"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWasabiDrmLibLoaded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackUpLoaderSoMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mBackUpLoaderSoMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getDrmLibLoadErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDrmLibLoadErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getDsLibLoadErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDsLibLoadErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public isAllPlayerLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsAllPlayerLibLoaded:Z

    return p0
.end method

.method public isBackUpLoaderSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsBackUpLoaderSuccess:Z

    return p0
.end method

.method public isCacheLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsCacheLibLoaded:Z

    return p0
.end method

.method public isDsLibLoadError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDsLibLoadError:Z

    return p0
.end method

.method public isDsLibLoadErrorMsgReport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDsLibLoadErrorMsgReport:Z

    return p0
.end method

.method public isDsLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsDsLibLoaded:Z

    return p0
.end method

.method public isFFmpegLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsFFmpegLibLoaded:Z

    return p0
.end method

.method public isHelpLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsHelpLibLoaded:Z

    return p0
.end method

.method public isMgtvDrmLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsMgtvDrmLibLoaded:Z

    return p0
.end method

.method public isMgtvHandLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsImgoHandJniLibLoaded:Z

    return p0
.end method

.method public isPlayerLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsPlayerLibLoaded:Z

    return p0
.end method

.method public isWasabiDrmLibLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsWasabiDrmLibLoaded:Z

    return p0
.end method

.method public setBackUpLoaderSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsBackUpLoaderSuccess:Z

    return-void
.end method

.method public setDsLibLoadErrorMsgReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mDsLibLoadErrorMsgReport:Z

    return-void
.end method

.method public syncTryLoadAllLibraries(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadAllLibraries(Landroid/content/Context;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public syncTryLoadDrmLib(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadWasabiDrmLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public syncTryLoadExsLib(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadExsLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public syncTryLoadFFmpegLib(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadFFmpegLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public syncTryLoadHandLib(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadImgoHandLib(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadImgoHandJniLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public syncTryLoadHelpLib(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadHelpLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public syncTryLoadMgtvDRMLib(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadOpenSSLLib(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadMgtvDrmLib(Landroid/content/Context;)Z

    iget-boolean p0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mIsMgtvDrmLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public syncTryLoadPlayerLib(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/loader/ImgoLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->tryLoadPlayerLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
