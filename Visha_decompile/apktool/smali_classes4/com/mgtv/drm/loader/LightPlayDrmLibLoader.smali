.class public Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIB_NAME_CRYPTO_1_1:Ljava/lang/String; = "crypto.1.1"

.field private static final LIB_NAME_MGTV_DRM:Ljava/lang/String; = "mgtvdrm"

.field private static final LIB_NAME_SSL_1_1:Ljava/lang/String; = "ssl.1.1"

.field private static final TAG:Ljava/lang/String; = "LightPlayDrmLibLoader"

.field private static sInstance:Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;


# instance fields
.field private libsLoaded:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public static exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Lcom/mgtv/drm/loader/LibLoaderError;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exLoadLibrary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightPlayDrmLibLoader"

    invoke-static {v1, v0}, Lcom/mgtv/drm/log/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/mgtv/drm/loader/LibLoader;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/mgtv/drm/loader/LibLoaderError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/mgtv/drm/loader/LibLoaderError;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;
    .locals 2

    const-class v0, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->sInstance:Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;

    invoke-direct {v1}, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;-><init>()V

    sput-object v1, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->sInstance:Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->sInstance:Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;
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


# virtual methods
.method public declared-synchronized loadLibs()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->libsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->mSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v2, "ssl.1.1"

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "crypto.1.1"

    invoke-static {v3, v2}, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "mgtvdrm"

    invoke-static {v3, v2}, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->exLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->libsLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
