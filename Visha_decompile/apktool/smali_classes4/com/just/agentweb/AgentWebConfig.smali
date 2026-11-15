.class public Lcom/just/agentweb/AgentWebConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AGENTWEB_CACHE_PATCH:Ljava/lang/String;

.field static AGENTWEB_FILE_PATH:Ljava/lang/String; = null

.field public static final AGENTWEB_NAME:Ljava/lang/String; = "AgentWeb"

.field public static final AGENTWEB_VERSION:Ljava/lang/String; = "AgentWeb/1.0"

.field public static DEBUG:Z = false

.field static final FILE_CACHE_PATH:Ljava/lang/String; = "agentweb-cache"

.field private static volatile IS_INITIALIZED:Z = false

.field static final IS_KITKAT_OR_BELOW_KITKAT:Z

.field public static MAX_FILE_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final WEBVIEW_AGENTWEB_SAFE_TYPE:I = 0x2

.field public static final WEBVIEW_CUSTOM_TYPE:I = 0x3

.field public static final WEBVIEW_DEFAULT_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "agentweb-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebConfig;->AGENTWEB_CACHE_PATCH:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->IS_KITKAT_OR_BELOW_KITKAT:Z

    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->IS_INITIALIZED:Z

    const-class v0, Lcom/just/agentweb/AgentWebConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebConfig;->TAG:Ljava/lang/String;

    const/high16 v0, 0x500000

    sput v0, Lcom/just/agentweb/AgentWebConfig;->MAX_FILE_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/just/agentweb/AgentWebConfig;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized clearDiskCache(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/just/agentweb/AgentWebConfig;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/just/agentweb/AgentWebUtils;->clearCacheFolder(Ljava/io/File;I)I

    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->getExternalCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/just/agentweb/AgentWebUtils;->clearCacheFolder(Ljava/io/File;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static createCookiesSyncInstance(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static debug()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->DEBUG:Z

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method

.method public static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/just/agentweb/AgentWebConfig;->AGENTWEB_CACHE_PATCH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDatabasesCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "database"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultIgnoreCallback()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/just/agentweb/AgentWebConfig$2;

    invoke-direct {v0}, Lcom/just/agentweb/AgentWebConfig$2;-><init>()V

    return-object v0
.end method

.method public static getExternalCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->getAgentWebFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized initCookiesManager(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/just/agentweb/AgentWebConfig;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/just/agentweb/AgentWebConfig;->IS_INITIALIZED:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->createCookiesSyncInstance(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/just/agentweb/AgentWebConfig;->IS_INITIALIZED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static removeAllCookies()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p0    # Landroid/webkit/ValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->getDefaultIgnoreCallback()Landroid/webkit/ValueCallback;

    move-result-object p0

    .line 3
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 4
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    return-void
.end method

.method public static removeExpiredCookies()V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    :cond_0
    return-void
.end method

.method public static removeSessionCookies()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->getDefaultIgnoreCallback()Landroid/webkit/ValueCallback;

    move-result-object p0

    .line 3
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 6
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    return-void
.end method

.method public static syncCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    :cond_0
    return-void
.end method

.method private static toSyncCookies()V
    .locals 2

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/just/agentweb/AgentWebConfig$1;

    invoke-direct {v1}, Lcom/just/agentweb/AgentWebConfig$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
