.class public final Lk2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field public final a:Lizf;

.field public final b:Lb0g;

.field public final c:Lv8g;

.field public final d:Lk8g;

.field public final e:Loqf;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lizf;Lb0g;Lv8g;Lk8g;Loqf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lk2h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lk2h;->a:Lizf;

    iput-object p2, p0, Lk2h;->b:Lb0g;

    iput-object p3, p0, Lk2h;->c:Lv8g;

    iput-object p4, p0, Lk2h;->d:Lk8g;

    iput-object p5, p0, Lk2h;->e:Loqf;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk2h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lk2h;->e:Loqf;

    invoke-virtual {v0}, Loqf;->zzs()V

    iget-object v0, p0, Lk2h;->d:Lk8g;

    invoke-virtual {v0, p1}, Lk8g;->F(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lk2h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk2h;->a:Lizf;

    invoke-virtual {p0}, Lizf;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lk2h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2h;->b:Lb0g;

    invoke-virtual {v0}, Lb0g;->zza()V

    iget-object p0, p0, Lk2h;->c:Lv8g;

    invoke-virtual {p0}, Lv8g;->zza()V

    :cond_0
    return-void
.end method
