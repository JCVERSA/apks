.class public final Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.hunantv.media.player.libnative.ImgoMediaPlayerHelp"

.field private static volatile mIsNativeInitialized:Z = false

.field private static mLogVaule:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->syncTryLoadHelpLib(Landroid/content/Context;)V

    return-void
.end method

.method private static ImgoLogGetThreadName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "chodisonLogThread"

    :cond_1
    return-object v0
.end method

.method private static ImgoLogSetThreadName(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static ImgoLogValueGet()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;->mLogVaule:Ljava/lang/String;

    return-object v0
.end method

.method public static ImgoLogValueSet(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;->mLogVaule:Ljava/lang/String;

    return-void
.end method

.method private native _getLogFile()[B
.end method

.method private native _setLogRecordPath(Ljava/lang/String;)V
.end method

.method private static initNativeOnce()V
    .locals 2

    const-class v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;->mIsNativeInitialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;->mIsNativeInitialized:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLogFile()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;->_getLogFile()[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public setLogRecordPath(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerHelp;->_setLogRecordPath(Ljava/lang/String;)V

    return-void
.end method
