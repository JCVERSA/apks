.class public final Llvh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Llvh;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llvh;

    invoke-direct {v0}, Llvh;-><init>()V

    sput-object v0, Llvh;->d:Llvh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llvh;->b:Z

    iput-boolean v0, p0, Llvh;->c:Z

    return-void
.end method

.method public static a()Llvh;
    .locals 1

    sget-object v0, Llvh;->d:Llvh;

    return-object v0
.end method

.method public static bridge synthetic b(Llvh;Z)V
    .locals 0

    iput-boolean p1, p0, Llvh;->b:Z

    return-void
.end method

.method public static bridge synthetic f(Llvh;)Z
    .locals 0

    iget-boolean p0, p0, Llvh;->c:Z

    return p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Llvh;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    iget-boolean v1, p0, Llvh;->b:Z

    invoke-virtual {p0, v1, v0}, Llvh;->d(ZZ)V

    iput-boolean v0, p0, Llvh;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-boolean v3, p0, Llvh;->c:Z

    if-nez v3, :cond_2

    iget-boolean p0, p0, Llvh;->b:Z

    if-eqz p0, :cond_3

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    if-ne v2, p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object p0

    invoke-virtual {p0}, Lcvh;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsuh;

    invoke-virtual {v2}, Lsuh;->g()Lrvh;

    move-result-object v2

    if-nez p2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Lrvh;->m(Z)V

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llvh;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lkvh;

    invoke-direct {v1, p0}, Lkvh;-><init>(Llvh;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
