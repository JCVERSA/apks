.class public final Lz9h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lolg;


# static fields
.field public static final b:Ljava/util/List;


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lz9h;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz9h;->a:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic h(Ly7h;)V
    .locals 3

    sget-object v0, Lz9h;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i()Ly7h;
    .locals 3

    sget-object v0, Lz9h;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ly7h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ly7h;-><init>(Ly8h;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly7h;

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(ILjava/lang/Object;)Lnkg;
    .locals 2

    iget-object v0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-static {}, Lz9h;->i()Ly7h;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Ly7h;->a(Landroid/os/Message;Lz9h;)Ly7h;

    return-object v1
.end method

.method public final c(Lnkg;)Z
    .locals 0

    check-cast p1, Ly7h;

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Ly7h;->b(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public final d(IJ)Z
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method

.method public final e(IIILjava/lang/Object;)Lnkg;
    .locals 1

    iget-object p1, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-static {}, Lz9h;->i()Ly7h;

    move-result-object p2

    const/16 p3, 0x1f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Ly7h;->a(Landroid/os/Message;Lz9h;)Ly7h;

    return-object p2
.end method

.method public final f(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final g(III)Lnkg;
    .locals 2

    iget-object v0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-static {}, Lz9h;->i()Ly7h;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Ly7h;->a(Landroid/os/Message;Lz9h;)Ly7h;

    return-object v1
.end method

.method public final zza()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(I)Lnkg;
    .locals 2

    iget-object v0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-static {}, Lz9h;->i()Ly7h;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Ly7h;->a(Landroid/os/Message;Lz9h;)Ly7h;

    return-object v1
.end method

.method public final zzg(I)V
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final zzh(I)Z
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public final zzj(I)Z
    .locals 0

    iget-object p0, p0, Lz9h;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method
