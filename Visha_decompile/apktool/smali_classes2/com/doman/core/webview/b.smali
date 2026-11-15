.class public final Lcom/doman/core/webview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/doman/core/webview/b;


# instance fields
.field public a:Ljava/lang/String;

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

.field private d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/webview/b;

    invoke-direct {v0}, Lcom/doman/core/webview/b;-><init>()V

    sput-object v0, Lcom/doman/core/webview/b;->c:Lcom/doman/core/webview/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/doman/core/webview/b$1;

    invoke-direct {v0, p0}, Lcom/doman/core/webview/b$1;-><init>(Lcom/doman/core/webview/b;)V

    iput-object v0, p0, Lcom/doman/core/webview/b;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/doman/core/webview/b;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lcom/doman/core/webview/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/doman/core/webview/b;->c:Lcom/doman/core/webview/b;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/webview/b;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/doman/core/webview/b;->b:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/doman/core/webview/b;->b:Ljava/util/LinkedList;

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
