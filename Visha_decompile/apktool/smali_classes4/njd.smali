.class public Lnjd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lnjd;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnjd;

    invoke-direct {v0}, Lnjd;-><init>()V

    sput-object v0, Lnjd;->d:Lnjd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnjd;->b:Z

    iput-boolean v0, p0, Lnjd;->c:Z

    return-void
.end method

.method public static synthetic d(Lnjd;)Z
    .locals 0

    iget-boolean p0, p0, Lnjd;->c:Z

    return p0
.end method

.method public static synthetic e(Lnjd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnjd;->b:Z

    return p1
.end method

.method public static f()Lnjd;
    .locals 1

    sget-object v0, Lnjd;->d:Lnjd;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnjd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    iget-boolean v1, p0, Lnjd;->b:Z

    invoke-virtual {p0, v1, v0}, Lnjd;->c(ZZ)V

    iput-boolean v0, p0, Lnjd;->c:Z

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnjd;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lnjd$a;

    invoke-direct {v1, p0}, Lnjd$a;-><init>(Lnjd;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public c(ZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    iget-boolean v3, p0, Lnjd;->c:Z

    if-nez v3, :cond_3

    iget-boolean p0, p0, Lnjd;->b:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v0

    :goto_3
    if-ne v2, p0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Li8d;->e()Li8d;

    move-result-object p0

    invoke-virtual {p0}, Li8d;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3d;

    invoke-virtual {v2}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v2

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v3, v1

    goto :goto_6

    :cond_6
    :goto_5
    move v3, v0

    :goto_6
    invoke-virtual {v2, v3}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->n(Z)V

    goto :goto_4

    :cond_7
    return-void
.end method
