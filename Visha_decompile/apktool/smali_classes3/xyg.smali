.class public final Lxyg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lv2h;


# direct methods
.method public constructor <init>(Lv2h;Lorj;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lxyg;->c:Lv2h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lxyg;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lxyg;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lxyg;)V
    .locals 1

    iget-object v0, p0, Lxyg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorj;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxyg;->c:Lv2h;

    iget-object v0, v0, Lorj;->a:Lqrj;

    invoke-virtual {p0}, Lv2h;->a()I

    move-result p0

    invoke-static {v0, p0}, Lqrj;->d(Lqrj;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(Lxyg;)V

    iget-object p0, p0, Lxyg;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lxyg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
