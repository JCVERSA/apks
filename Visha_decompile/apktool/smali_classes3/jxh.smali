.class public final Ljxh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lrwh;

.field public final d:Lixh;

.field public e:Lxda;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lrwh;Ltwh;Lhxh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxh;->a:Landroid/content/Context;

    iput-object p2, p0, Ljxh;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ljxh;->c:Lrwh;

    iput-object p5, p0, Ljxh;->d:Lixh;

    return-void
.end method

.method public static synthetic a(Ljxh;)Lcom/google/android/gms/internal/ads/t;
    .locals 3

    iget-object p0, p0, Ljxh;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lzwh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/t;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/util/concurrent/Executor;Lrwh;Ltwh;)Ljxh;
    .locals 7

    new-instance v6, Ljxh;

    new-instance v5, Lhxh;

    invoke-direct {v5}, Lhxh;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljxh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lrwh;Ltwh;Lhxh;)V

    new-instance p0, Lfxh;

    invoke-direct {p0, v6}, Lfxh;-><init>(Ljxh;)V

    iget-object p1, v6, Ljxh;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Lcom/google/android/gms/tasks/a;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lxda;

    move-result-object p0

    new-instance p2, Lgxh;

    invoke-direct {p2, v6}, Lgxh;-><init>(Ljxh;)V

    invoke-virtual {p0, p1, p2}, Lxda;->e(Ljava/util/concurrent/Executor;Lre7;)Lxda;

    move-result-object p0

    iput-object p0, v6, Ljxh;->e:Lxda;

    return-object v6
.end method

.method public static synthetic d(Ljxh;Ljava/lang/Exception;)V
    .locals 3

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object p0, p0, Ljxh;->c:Lrwh;

    const/16 v0, 0x7e9

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/t;
    .locals 2

    iget-object v0, p0, Ljxh;->d:Lixh;

    iget-object p0, p0, Ljxh;->e:Lxda;

    invoke-interface {v0}, Lixh;->zza()Lcom/google/android/gms/internal/ads/t;

    move-result-object v0

    invoke-virtual {p0}, Lxda;->q()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lxda;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/t;

    return-object p0
.end method
