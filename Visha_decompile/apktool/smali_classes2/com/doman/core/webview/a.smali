.class public final Lcom/doman/core/webview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/doman/core/webview/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/webview/a;

    invoke-direct {v0}, Lcom/doman/core/webview/a;-><init>()V

    sput-object v0, Lcom/doman/core/webview/a;->d:Lcom/doman/core/webview/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/doman/core/webview/a$1;

    invoke-direct {v0, p0}, Lcom/doman/core/webview/a$1;-><init>(Lcom/doman/core/webview/a;)V

    iput-object v0, p0, Lcom/doman/core/webview/a;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/doman/core/webview/a;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lcom/doman/core/webview/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/doman/core/webview/a;->d:Lcom/doman/core/webview/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/webview/a;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/doman/core/webview/a;->b:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/doman/core/webview/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebSettings;

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getUA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Landroid/webkit/WebView;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    iget-object v2, p0, Lcom/doman/core/webview/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getUA()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/doman/core/webview/a;->a:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/doman/core/webview/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v2, p0, Lcom/doman/core/webview/a;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "appcache"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/doman/core/webview/a;->c:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/doman/core/webview/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "databases"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "geolocation"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    invoke-direct {p0, p1}, Lcom/doman/core/webview/a;->b(Landroid/webkit/WebView;)V

    return-void
.end method
