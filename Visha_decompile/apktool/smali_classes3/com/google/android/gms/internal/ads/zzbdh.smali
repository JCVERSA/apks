.class public final Lcom/google/android/gms/internal/ads/zzbdh;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Landroid/content/Context;

.field public d:Lsmg;

.field public e:Landroidx/browser/customtabs/CustomTabsSession;

.field public f:Landroidx/browser/customtabs/CustomTabsClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/zzbdh;I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->d:Lsmg;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsmg;->a()Lrmg;

    move-result-object p0

    const-string v0, "action"

    const-string v1, "cct_nav"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cct_navs"

    invoke-virtual {p0, v0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/ads/zzbdh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbdh;->f(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->e:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    sget-object v0, Lzef;->a:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdf;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->e:Landroidx/browser/customtabs/CustomTabsSession;

    return-object p0
.end method

.method public final d(Landroid/content/Context;Lsmg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->d:Lsmg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdh;->f(Landroid/content/Context;)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    sget-object v0, Lcye;->M4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->d:Lsmg;

    if-eqz v0, :cond_0

    sget-object v0, Lzef;->a:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbde;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbde;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->f:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0, p0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->f:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    new-instance p1, Lvye;

    invoke-direct {p1, p0}, Lvye;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;)V

    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->e:Landroidx/browser/customtabs/CustomTabsSession;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->f:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->e:Landroidx/browser/customtabs/CustomTabsSession;

    return-void
.end method
