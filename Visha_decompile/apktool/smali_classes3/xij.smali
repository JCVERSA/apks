.class public final Lxij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lphj;


# static fields
.field public static final a0:Ljava/lang/Object;

.field public static b0:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c0:I


# instance fields
.field public A:J

.field public B:J

.field public C:I

.field public D:Z

.field public E:Z

.field public F:J

.field public G:F

.field public H:Ljava/nio/ByteBuffer;

.field public I:I

.field public J:Ljava/nio/ByteBuffer;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:I

.field public P:Lklh;

.field public Q:Lsgj;

.field public R:J

.field public S:Z

.field public T:Z

.field public U:Landroid/os/Looper;

.field public V:J

.field public W:J

.field public X:Landroid/os/Handler;

.field public final Y:Lcij;

.field public final Z:Lvhj;

.field public final a:Landroid/content/Context;

.field public final b:Luhj;

.field public final c:Lhjj;

.field public final d:Lcom/google/android/gms/internal/ads/zzfww;

.field public final e:Lcom/google/android/gms/internal/ads/zzfww;

.field public final f:Lthj;

.field public final g:Ljava/util/ArrayDeque;

.field public h:Lvij;

.field public final i:Lgij;

.field public final j:Lgij;

.field public k:Ltfj;

.field public l:Lohj;

.field public m:Lbij;

.field public n:Lbij;

.field public o:Laof;

.field public p:Landroid/media/AudioTrack;

.field public q:Lggj;

.field public r:Lqgj;

.field public s:Lfij;

.field public t:Lhvg;

.field public u:Ldij;

.field public v:Ldij;

.field public w:Lvwe;

.field public x:Z

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxij;->a0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Laij;Lwij;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laij;->a(Laij;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lxij;->a:Landroid/content/Context;

    sget-object v0, Lhvg;->b:Lhvg;

    iput-object v0, p0, Lxij;->t:Lhvg;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laij;->b(Laij;)Lggj;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lxij;->q:Lggj;

    invoke-static {p1}, Laij;->d(Laij;)Lcij;

    move-result-object p2

    iput-object p2, p0, Lxij;->Y:Lcij;

    sget p2, Lkfh;->a:I

    invoke-static {p1}, Laij;->e(Laij;)Lvhj;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lxij;->Z:Lvhj;

    new-instance p1, Lthj;

    new-instance p2, Lsij;

    invoke-direct {p2, p0, v0}, Lsij;-><init>(Lxij;Lwij;)V

    invoke-direct {p1, p2}, Lthj;-><init>(Lshj;)V

    iput-object p1, p0, Lxij;->f:Lthj;

    new-instance p1, Luhj;

    invoke-direct {p1}, Luhj;-><init>()V

    iput-object p1, p0, Lxij;->b:Luhj;

    new-instance p2, Lhjj;

    invoke-direct {p2}, Lhjj;-><init>()V

    iput-object p2, p0, Lxij;->c:Lhjj;

    new-instance v0, Lvuf;

    invoke-direct {v0}, Lvuf;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lxij;->d:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance v0, Lgjj;

    invoke-direct {v0}, Lgjj;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lxij;->e:Lcom/google/android/gms/internal/ads/zzfww;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lxij;->G:F

    const/4 p1, 0x0

    iput p1, p0, Lxij;->O:I

    new-instance p2, Lklh;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lklh;-><init>(IF)V

    iput-object p2, p0, Lxij;->P:Lklh;

    new-instance p2, Ldij;

    sget-object v0, Lvwe;->d:Lvwe;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p2

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Ldij;-><init>(Lvwe;JJLwij;)V

    iput-object p2, p0, Lxij;->v:Ldij;

    iput-object v0, p0, Lxij;->w:Lvwe;

    iput-boolean p1, p0, Lxij;->x:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lxij;->g:Ljava/util/ArrayDeque;

    new-instance p1, Lgij;

    invoke-direct {p1}, Lgij;-><init>()V

    iput-object p1, p0, Lxij;->i:Lgij;

    new-instance p1, Lgij;

    invoke-direct {p1}, Lgij;-><init>()V

    iput-object p1, p0, Lxij;->j:Lgij;

    return-void
.end method

.method public static P(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Lkfh;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final R(Lehj;Lhvg;ILerj;)Landroid/media/AudioTrack;
    .locals 9

    :try_start_0
    iget v0, p0, Lehj;->b:I

    iget v1, p0, Lehj;->c:I

    iget v2, p0, Lehj;->a:I

    invoke-static {v0, v1, v2}, Lkfh;->S(III)Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {p1}, Lhvg;->a()Ljgf;

    move-result-object p1

    iget-object p1, p1, Ljgf;->a:Landroid/media/AudioAttributes;

    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v1, p0, Lehj;->e:I

    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    sget p2, Lkfh;->a:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_0

    iget-boolean p2, p0, Lehj;->d:Z

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget v3, p0, Lehj;->b:I

    iget v4, p0, Lehj;->c:I

    iget v5, p0, Lehj;->a:I

    iget-boolean v7, p0, Lehj;->d:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqb;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(IIIILerj;ZLjava/lang/Exception;)V

    throw p0

    :goto_1
    iget v2, p0, Lehj;->b:I

    iget v3, p0, Lehj;->c:I

    iget v4, p0, Lehj;->a:I

    iget-boolean v6, p0, Lehj;->d:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqb;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(IIIILerj;ZLjava/lang/Exception;)V

    throw p0
.end method

.method public static bridge synthetic q(Lxij;)J
    .locals 2

    iget-wide v0, p0, Lxij;->R:J

    return-wide v0
.end method

.method public static bridge synthetic r(Lxij;)J
    .locals 2

    invoke-virtual {p0}, Lxij;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic s(Lxij;)J
    .locals 2

    invoke-virtual {p0}, Lxij;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic t(Lxij;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lxij;->p:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static bridge synthetic u(Lxij;)Lohj;
    .locals 0

    iget-object p0, p0, Lxij;->l:Lohj;

    return-object p0
.end method

.method public static synthetic v(Lxij;)V
    .locals 4

    iget-wide v0, p0, Lxij;->W:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lxij;->l:Lohj;

    check-cast v0, Lbjj;

    iget-object v0, v0, Lbjj;->a:Ldjj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldjj;->O0(Ldjj;Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxij;->W:J

    :cond_0
    return-void
.end method

.method public static bridge synthetic w(Lxij;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxij;->M:Z

    return-void
.end method

.method public static synthetic x(Landroid/media/AudioTrack;Lohj;Landroid/os/Handler;Lehj;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lohj;Lehj;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lxij;->a0:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Lxij;->c0:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lxij;->c0:I

    if-nez p1, :cond_1

    sget-object p1, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lohj;Lehj;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Lxij;->a0:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Lxij;->c0:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lxij;->c0:I

    if-nez p2, :cond_3

    sget-object p2, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static bridge synthetic z()Z
    .locals 2

    sget-object v0, Lxij;->a0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lxij;->c0:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final A()J
    .locals 5

    iget-object v0, p0, Lxij;->n:Lbij;

    iget v1, v0, Lbij;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lxij;->y:J

    iget p0, v0, Lbij;->b:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lxij;->z:J

    :goto_0
    return-wide v1
.end method

.method public final B()J
    .locals 7

    iget-object v0, p0, Lxij;->n:Lbij;

    iget v1, v0, Lbij;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lxij;->A:J

    iget p0, v0, Lbij;->d:I

    int-to-long v3, p0

    sget p0, Lkfh;->a:I

    add-long/2addr v1, v3

    const-wide/16 v5, -0x1

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lxij;->B:J

    :goto_0
    return-wide v1
.end method

.method public final C(Lbij;)Landroid/media/AudioTrack;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lbij;->a()Lehj;

    move-result-object v0

    iget-object v1, p0, Lxij;->t:Lhvg;

    iget v2, p0, Lxij;->O:I

    iget-object p1, p1, Lbij;->a:Lerj;

    invoke-static {v0, v1, v2, p1}, Lxij;->R(Lehj;Lhvg;ILerj;)Landroid/media/AudioTrack;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lxij;->l:Lohj;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lohj;->b(Ljava/lang/Exception;)V

    :goto_0
    throw p1
.end method

.method public final D(J)V
    .locals 9

    invoke-virtual {p0}, Lxij;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxij;->Y:Lcij;

    iget-object v1, p0, Lxij;->w:Lvwe;

    invoke-virtual {v0, v1}, Lcij;->c(Lvwe;)Lvwe;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lvwe;->d:Lvwe;

    goto :goto_0

    :goto_1
    iput-object v3, p0, Lxij;->w:Lvwe;

    invoke-virtual {p0}, Lxij;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxij;->Y:Lcij;

    iget-boolean v1, p0, Lxij;->x:Z

    invoke-virtual {v0, v1}, Lcij;->d(Z)Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lxij;->x:Z

    iget-object v0, p0, Lxij;->g:Ljava/util/ArrayDeque;

    new-instance v1, Ldij;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lxij;->n:Lbij;

    invoke-virtual {p0}, Lxij;->B()J

    move-result-wide v6

    iget p1, p1, Lbij;->e:I

    invoke-static {v6, v7, p1}, Lkfh;->O(JI)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ldij;-><init>(Lvwe;JJLwij;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxij;->M()V

    iget-object p1, p0, Lxij;->l:Lohj;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lxij;->x:Z

    check-cast p1, Lbjj;

    iget-object p1, p1, Lbjj;->a:Ldjj;

    invoke-static {p1}, Ldjj;->N0(Ldjj;)Lchj;

    move-result-object p1

    invoke-virtual {p1, p0}, Lchj;->w(Z)V

    :cond_2
    return-void
.end method

.method public final E(J)V
    .locals 7

    iget-object p1, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lxij;->j:Lgij;

    invoke-virtual {p1}, Lgij;->c()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    iget-object v1, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lxij;->R:J

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    sget p2, Lkfh;->a:I

    const/16 v5, 0x18

    if-lt p2, v5, :cond_1

    const/4 p2, -0x6

    if-eq v0, p2, :cond_2

    :cond_1
    const/16 p2, -0x20

    if-ne v0, p2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lxij;->B()J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-lez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {p2}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lxij;->F()V

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v1, p0, Lxij;->n:Lbij;

    iget-object v1, v1, Lbij;->a:Lerj;

    invoke-direct {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(ILerj;Z)V

    iget-object v0, p0, Lxij;->l:Lohj;

    if-eqz v0, :cond_5

    invoke-interface {v0, p2}, Lohj;->b(Ljava/lang/Exception;)V

    :cond_5
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lxij;->a:Landroid/content/Context;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Lggj;->c:Lggj;

    iput-object p1, p0, Lxij;->q:Lggj;

    throw p2

    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Lgij;->b(Ljava/lang/Exception;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lgij;->a()V

    iget-object p1, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {p1}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide v5, p0, Lxij;->B:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_9

    iput-boolean v1, p0, Lxij;->T:Z

    :cond_9
    iget-boolean p1, p0, Lxij;->N:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lxij;->l:Lohj;

    if-eqz p1, :cond_a

    if-ge v0, p2, :cond_a

    check-cast p1, Lbjj;

    :cond_a
    iget-object p1, p0, Lxij;->n:Lbij;

    iget p1, p1, Lbij;->c:I

    if-nez p1, :cond_b

    iget-wide v3, p0, Lxij;->A:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lxij;->A:J

    :cond_b
    if-ne v0, p2, :cond_e

    if-eqz p1, :cond_d

    iget-object p1, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lxij;->H:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_c

    goto :goto_2

    :cond_c
    move v2, v1

    :goto_2
    invoke-static {v2}, Ln7g;->f(Z)V

    iget-wide p1, p0, Lxij;->B:J

    iget v0, p0, Lxij;->C:I

    int-to-long v0, v0

    iget v2, p0, Lxij;->I:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lxij;->B:J

    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    :cond_e
    :goto_3
    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lxij;->n:Lbij;

    iget v0, v0, Lbij;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lxij;->S:Z

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 5

    iget-object v0, p0, Lxij;->r:Lqgj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lxij;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lxij;->U:Landroid/os/Looper;

    new-instance v1, Lqgj;

    new-instance v2, Lwhj;

    invoke-direct {v2, p0}, Lwhj;-><init>(Lxij;)V

    iget-object v3, p0, Lxij;->t:Lhvg;

    iget-object v4, p0, Lxij;->Q:Lsgj;

    invoke-direct {v1, v0, v2, v3, v4}, Lqgj;-><init>(Landroid/content/Context;Lwhj;Lhvg;Lsgj;)V

    iput-object v1, p0, Lxij;->r:Lqgj;

    invoke-virtual {v1}, Lqgj;->c()Lggj;

    move-result-object v0

    iput-object v0, p0, Lxij;->q:Lggj;

    :cond_0
    iget-object p0, p0, Lxij;->q:Lggj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final H()V
    .locals 3

    iget-boolean v0, p0, Lxij;->L:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxij;->L:Z

    iget-object v0, p0, Lxij;->f:Lthj;

    invoke-virtual {p0}, Lxij;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lthj;->b(J)V

    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {v0}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxij;->M:Z

    :cond_0
    iget-object p0, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    return-void
.end method

.method public final I(J)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lxij;->E(J)V

    iget-object v0, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->g()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lxij;->K(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lxij;->E(J)V

    iget-object v0, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lxij;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxij;->o:Laof;

    iget-object v1, p0, Lxij;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Laof;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lxij;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lxij;->K(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lxij;->E(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final J(Lvwe;)V
    .locals 8

    new-instance v7, Ldij;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Ldij;-><init>(Lvwe;JJLwij;)V

    invoke-virtual {p0}, Lxij;->O()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Lxij;->u:Ldij;

    return-void

    :cond_0
    iput-object v7, p0, Lxij;->v:Ldij;

    return-void
.end method

.method public final K(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lxij;->J:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln7g;->f(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lxij;->n:Lbij;

    iget v1, v1, Lbij;->c:I

    if-nez v1, :cond_15

    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Lkfh;->N(J)J

    move-result-wide v1

    iget-object v3, v0, Lxij;->n:Lbij;

    iget v3, v3, Lbij;->e:I

    invoke-static {v1, v2, v3}, Lkfh;->K(JI)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lxij;->B()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gez v6, :cond_15

    iget-object v6, v0, Lxij;->n:Lbij;

    iget v7, v6, Lbij;->g:I

    iget v6, v6, Lbij;->d:I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    long-to-int v2, v2

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ge v2, v1, :cond_14

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/4 v3, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_a

    if-eq v7, v10, :cond_9

    if-eq v7, v3, :cond_7

    if-eq v7, v15, :cond_6

    if-eq v7, v14, :cond_5

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    :goto_2
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    or-int/2addr v12, v15

    goto/16 :goto_6

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    :goto_3
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    goto/16 :goto_6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    :goto_4
    or-int/2addr v12, v13

    goto/16 :goto_6

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    neg-float v12, v12

    const/high16 v13, -0x31000000

    :goto_5
    mul-float/2addr v12, v13

    float-to-int v12, v12

    goto :goto_6

    :cond_8
    const/high16 v13, 0x4f000000

    goto :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    goto :goto_4

    :goto_6
    int-to-long v12, v12

    int-to-long v14, v2

    mul-long/2addr v12, v14

    div-long/2addr v12, v4

    long-to-int v12, v12

    if-eq v7, v11, :cond_13

    if-eq v7, v10, :cond_12

    if-eq v7, v3, :cond_10

    const/16 v3, 0x15

    if-eq v7, v3, :cond_f

    const/16 v3, 0x16

    if-eq v7, v3, :cond_e

    const/high16 v3, 0x10000000

    if-eq v7, v3, :cond_d

    const/high16 v3, 0x50000000

    if-eq v7, v3, :cond_c

    const/high16 v3, 0x60000000

    if-ne v7, v3, :cond_b

    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_d
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_e
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    if-gez v12, :cond_11

    int-to-float v3, v12

    neg-float v3, v3

    const/high16 v10, -0x31000000

    div-float/2addr v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-float v3, v12

    const/high16 v10, 0x4f000000

    div-float/2addr v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v3, v12, 0x18

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int v10, v9, v6

    if-ne v3, v10, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    goto/16 :goto_1

    :cond_14
    move-object/from16 v1, p1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v1, v8

    goto :goto_8

    :cond_15
    move-object/from16 v1, p1

    :goto_8
    iput-object v1, v0, Lxij;->J:Ljava/nio/ByteBuffer;

    :cond_16
    return-void
.end method

.method public final L()V
    .locals 1

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    iget p0, p0, Lxij;->G:F

    invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Lxij;->n:Lbij;

    iget-object v0, v0, Lbij;->i:Laof;

    iput-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->c()V

    return-void
.end method

.method public final N()Z
    .locals 5

    iget-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->h()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lxij;->E(J)V

    iget-object p0, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->d()V

    invoke-virtual {p0, v1, v2}, Lxij;->I(J)V

    iget-object v0, p0, Lxij;->o:Laof;

    invoke-virtual {v0}, Laof;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    move v3, v4

    :cond_4
    :goto_0
    return v3
.end method

.method public final O()Z
    .locals 0

    iget-object p0, p0, Lxij;->p:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q()Z
    .locals 1

    iget-object p0, p0, Lxij;->n:Lbij;

    iget v0, p0, Lbij;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lbij;->a:Lerj;

    iget p0, p0, Lerj;->G:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lerj;)I
    .locals 3

    invoke-virtual {p0}, Lxij;->G()V

    iget-object v0, p1, Lerj;->o:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget p0, p1, Lerj;->G:I

    invoke-static {p0}, Lkfh;->k(I)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PCM encoding: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eq p0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lxij;->q:Lggj;

    iget-object p0, p0, Lxij;->t:Lhvg;

    invoke-virtual {v0, p1, p0}, Lggj;->b(Lerj;Lhvg;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Lxij;->p:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lxij;->P(Landroid/media/AudioTrack;)Z

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, Lxij;->O:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lxij;->O:I

    invoke-virtual {p0}, Lxij;->zzf()V

    :cond_0
    return-void
.end method

.method public final d(Z)J
    .locals 6

    invoke-virtual {p0}, Lxij;->O()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lxij;->E:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lxij;->f:Lthj;

    invoke-virtual {p1}, Lthj;->a()J

    move-result-wide v0

    iget-object p1, p0, Lxij;->n:Lbij;

    invoke-virtual {p0}, Lxij;->B()J

    move-result-wide v2

    iget p1, p1, Lbij;->e:I

    invoke-static {v2, v3, p1}, Lkfh;->O(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lxij;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldij;

    iget-wide v2, v2, Ldij;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldij;

    iput-object p1, p0, Lxij;->v:Ldij;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lxij;->v:Ldij;

    iget-wide v3, v2, Ldij;->c:J

    sub-long/2addr v0, v3

    iget-object v2, v2, Ldij;->a:Lvwe;

    iget v2, v2, Lvwe;->a:F

    invoke-static {v0, v1, v2}, Lkfh;->L(JF)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lxij;->Y:Lcij;

    invoke-virtual {p1, v0, v1}, Lcij;->a(J)J

    move-result-wide v0

    iget-object p1, p0, Lxij;->v:Ldij;

    iget-wide v4, p1, Ldij;->b:J

    add-long/2addr v4, v0

    sub-long/2addr v0, v2

    iput-wide v0, p1, Ldij;->d:J

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lxij;->v:Ldij;

    iget-wide v0, p1, Ldij;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Ldij;->d:J

    add-long v4, v0, v2

    :goto_1
    iget-object p1, p0, Lxij;->Y:Lcij;

    invoke-virtual {p1}, Lcij;->b()J

    move-result-wide v0

    iget-object p1, p0, Lxij;->n:Lbij;

    iget p1, p1, Lbij;->e:I

    invoke-static {v0, v1, p1}, Lkfh;->O(JI)J

    move-result-wide v2

    add-long/2addr v4, v2

    iget-wide v2, p0, Lxij;->V:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lxij;->n:Lbij;

    iget p1, p1, Lbij;->e:I

    sub-long v2, v0, v2

    invoke-static {v2, v3, p1}, Lkfh;->O(JI)J

    move-result-wide v2

    iput-wide v0, p0, Lxij;->V:J

    iget-wide v0, p0, Lxij;->W:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lxij;->W:J

    iget-object p1, p0, Lxij;->X:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lxij;->X:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lxij;->X:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lxij;->X:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Lxij;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v4

    :cond_5
    :goto_2
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method public final e(Lklh;)V
    .locals 1

    iget-object v0, p0, Lxij;->P:Lklh;

    invoke-virtual {v0, p1}, Lklh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxij;->P:Lklh;

    iget v0, v0, Lklh;->a:I

    :cond_1
    iput-object p1, p0, Lxij;->P:Lklh;

    return-void
.end method

.method public final f(Lvwe;)V
    .locals 5

    new-instance v0, Lvwe;

    iget v1, p1, Lvwe;->a:F

    sget v2, Lkfh;->a:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p1, Lvwe;->b:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lvwe;-><init>(FF)V

    iput-object v0, p0, Lxij;->w:Lvwe;

    invoke-virtual {p0, p1}, Lxij;->J(Lvwe;)V

    return-void
.end method

.method public final g(Ljava/nio/ByteBuffer;JI)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    iget-object v0, v1, Lxij;->H:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iget-object v0, v1, Lxij;->m:Lbij;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lxij;->N()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    iget-object v0, v1, Lxij;->m:Lbij;

    iget-object v9, v1, Lxij;->n:Lbij;

    iget v10, v9, Lbij;->c:I

    iget v11, v0, Lbij;->c:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lbij;->g:I

    iget v11, v0, Lbij;->g:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lbij;->e:I

    iget v11, v0, Lbij;->e:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lbij;->f:I

    iget v11, v0, Lbij;->f:I

    if-ne v10, v11, :cond_3

    iget v9, v9, Lbij;->d:I

    iget v10, v0, Lbij;->d:I

    if-ne v9, v10, :cond_3

    iput-object v0, v1, Lxij;->n:Lbij;

    iput-object v8, v1, Lxij;->m:Lbij;

    iget-object v0, v1, Lxij;->p:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lxij;->n:Lbij;

    iget-boolean v0, v0, Lbij;->k:Z

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lxij;->H()V

    invoke-virtual/range {p0 .. p0}, Lxij;->zzy()Z

    move-result v0

    if-eqz v0, :cond_4

    return v7

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lxij;->zzf()V

    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v4}, Lxij;->D(J)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lxij;->O()Z

    move-result v0

    const/16 v9, 0x1f

    if-eqz v0, :cond_7

    goto/16 :goto_6

    :cond_7
    :try_start_0
    iget-object v0, v1, Lxij;->i:Lgij;

    invoke-virtual {v0}, Lgij;->c()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_8

    return v7

    :cond_8
    :try_start_1
    iget-object v0, v1, Lxij;->n:Lbij;

    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, Lxij;->C(Lbij;)Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v11, v0

    goto :goto_2

    :cond_9
    throw v8
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget-object v0, v1, Lxij;->n:Lbij;

    iget v12, v0, Lbij;->h:I

    const v13, 0xf4240

    if-le v12, v13, :cond_2d

    new-instance v12, Lbij;

    iget-object v15, v0, Lbij;->a:Lerj;

    iget v13, v0, Lbij;->b:I

    iget v14, v0, Lbij;->c:I

    iget v8, v0, Lbij;->d:I

    iget v7, v0, Lbij;->e:I

    iget v6, v0, Lbij;->f:I

    iget v10, v0, Lbij;->g:I

    iget-object v0, v0, Lbij;->i:Laof;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v22, 0xf4240

    const/16 v24, 0x0

    move/from16 v17, v14

    move-object v14, v12

    move/from16 v16, v13

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v23, v0

    invoke-direct/range {v14 .. v26}, Lbij;-><init>(Lerj;IIIIIIILaof;ZZZ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1, v12}, Lxij;->C(Lbij;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v12, v1, Lxij;->n:Lbij;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    iput-object v0, v1, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {v0}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lxij;->p:Landroid/media/AudioTrack;

    iget-object v6, v1, Lxij;->h:Lvij;

    if-nez v6, :cond_a

    new-instance v6, Lvij;

    invoke-direct {v6, v1}, Lvij;-><init>(Lxij;)V

    iput-object v6, v1, Lxij;->h:Lvij;

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :cond_a
    :goto_4
    iget-object v6, v1, Lxij;->h:Lvij;

    invoke-virtual {v6, v0}, Lvij;->a(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lxij;->n:Lbij;

    iget-boolean v0, v0, Lbij;->k:Z

    :cond_b
    sget v0, Lkfh;->a:I

    if-lt v0, v9, :cond_c

    iget-object v6, v1, Lxij;->k:Ltfj;

    if-eqz v6, :cond_c

    iget-object v7, v1, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Ltfj;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v6

    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v8

    invoke-static {v6, v8}, Laf6;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v7, v6}, Le02;->a(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    :cond_c
    iget-object v6, v1, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v6

    iput v6, v1, Lxij;->O:I

    iget-object v10, v1, Lxij;->f:Lthj;

    iget-object v11, v1, Lxij;->p:Landroid/media/AudioTrack;

    iget-object v6, v1, Lxij;->n:Lbij;

    iget v7, v6, Lbij;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    const/4 v12, 0x1

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    :goto_5
    iget v13, v6, Lbij;->g:I

    iget v14, v6, Lbij;->d:I

    iget v15, v6, Lbij;->h:I

    invoke-virtual/range {v10 .. v15}, Lthj;->d(Landroid/media/AudioTrack;ZIII)V

    invoke-virtual/range {p0 .. p0}, Lxij;->L()V

    iget-object v6, v1, Lxij;->P:Lklh;

    iget v6, v6, Lklh;->a:I

    iget-object v6, v1, Lxij;->Q:Lsgj;

    if-eqz v6, :cond_e

    iget-object v7, v1, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {v7, v6}, Lxhj;->a(Landroid/media/AudioTrack;Lsgj;)V

    iget-object v6, v1, Lxij;->r:Lqgj;

    if-eqz v6, :cond_e

    iget-object v7, v1, Lxij;->Q:Lsgj;

    iget-object v7, v7, Lsgj;->a:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v6, v7}, Lqgj;->h(Landroid/media/AudioDeviceInfo;)V

    :cond_e
    const/16 v6, 0x18

    if-lt v0, v6, :cond_f

    iget-object v0, v1, Lxij;->r:Lqgj;

    if-eqz v0, :cond_f

    new-instance v6, Lfij;

    iget-object v7, v1, Lxij;->p:Landroid/media/AudioTrack;

    invoke-direct {v6, v7, v0}, Lfij;-><init>(Landroid/media/AudioTrack;Lqgj;)V

    iput-object v6, v1, Lxij;->s:Lfij;

    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, v1, Lxij;->E:Z

    iget-object v0, v1, Lxij;->l:Lohj;

    if-eqz v0, :cond_10

    iget-object v6, v1, Lxij;->n:Lbij;

    invoke-virtual {v6}, Lbij;->a()Lehj;

    move-result-object v6

    check-cast v0, Lbjj;

    iget-object v0, v0, Lbjj;->a:Ldjj;

    invoke-static {v0}, Ldjj;->N0(Ldjj;)Lchj;

    move-result-object v0

    invoke-virtual {v0, v6}, Lchj;->o(Lehj;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_4 .. :try_end_4} :catch_1

    :cond_10
    :goto_6
    iget-object v0, v1, Lxij;->i:Lgij;

    invoke-virtual {v0}, Lgij;->a()V

    iget-boolean v0, v1, Lxij;->E:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_11

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lxij;->F:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lxij;->D:Z

    iput-boolean v8, v1, Lxij;->E:Z

    invoke-virtual {v1, v3, v4}, Lxij;->D(J)V

    iget-boolean v0, v1, Lxij;->N:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lxij;->zzi()V

    :cond_11
    iget-object v0, v1, Lxij;->f:Lthj;

    invoke-virtual/range {p0 .. p0}, Lxij;->B()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lthj;->j(J)Z

    iget-object v8, v1, Lxij;->H:Ljava/nio/ByteBuffer;

    if-nez v8, :cond_2a

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v10, :cond_12

    const/4 v8, 0x1

    goto :goto_7

    :cond_12
    const/4 v8, 0x0

    :goto_7
    invoke-static {v8}, Ln7g;->d(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    return v8

    :cond_13
    iget-object v8, v1, Lxij;->n:Lbij;

    iget v10, v8, Lbij;->c:I

    if-eqz v10, :cond_22

    iget v10, v1, Lxij;->C:I

    if-nez v10, :cond_22

    iget v8, v8, Lbij;->g:I

    const/16 v10, 0x14

    if-eq v8, v10, :cond_20

    const/16 v10, 0x1e

    const/4 v11, -0x2

    const/4 v12, -0x1

    const/16 v13, 0x400

    if-eq v8, v10, :cond_19

    packed-switch v8, :pswitch_data_0

    const/16 v9, 0x10

    packed-switch v8, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v8, La8e;->a:[I

    new-array v8, v9, [B

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v10

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Lp3h;

    invoke-direct {v10, v8, v9}, Lp3h;-><init>([BI)V

    invoke-static {v10}, La8e;->b(Lp3h;)Ly7e;

    move-result-object v8

    iget v8, v8, Ly7e;->c:I

    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_10

    :goto_9
    :pswitch_1
    move v8, v13

    goto :goto_8

    :pswitch_2
    const/16 v8, 0x200

    goto :goto_8

    :pswitch_3
    sget-object v8, Lw7e;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v10

    add-int/lit8 v10, v10, -0xa

    move v13, v8

    :goto_a
    if-gt v13, v10, :cond_15

    add-int/lit8 v14, v13, 0x4

    invoke-static {v2, v14}, Lkfh;->E(Ljava/nio/ByteBuffer;I)I

    move-result v14

    and-int/2addr v14, v11

    const v15, -0x78d9046

    if-ne v14, v15, :cond_14

    sub-int/2addr v13, v8

    goto :goto_b

    :cond_14
    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_a

    :cond_15
    move v13, v12

    :goto_b
    if-ne v13, v12, :cond_16

    const/4 v8, 0x0

    goto :goto_8

    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v13

    add-int/lit8 v8, v8, 0x7

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/2addr v10, v13

    const/16 v11, 0xbb

    if-ne v8, v11, :cond_17

    const/16 v8, 0x9

    goto :goto_c

    :cond_17
    const/16 v8, 0x8

    :goto_c
    add-int/2addr v10, v8

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x7

    const/16 v10, 0x28

    shl-int v8, v10, v8

    mul-int/2addr v8, v9

    goto :goto_8

    :pswitch_4
    const/16 v8, 0x800

    goto :goto_8

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-static {v2, v8}, Lkfh;->E(Ljava/nio/ByteBuffer;I)I

    move-result v8

    invoke-static {v8}, Lv9e;->c(I)I

    move-result v8

    if-eq v8, v12, :cond_18

    goto :goto_8

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lw7e;->a(Ljava/nio/ByteBuffer;)I

    move-result v8

    goto :goto_8

    :cond_19
    :pswitch_7
    sget-object v8, Lb9e;->a:[I

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v14, -0xde4bec0

    if-eq v10, v14, :cond_1f

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v14, -0x17bd3b8f

    if-ne v10, v14, :cond_1a

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v8, 0x25205864

    if-ne v10, v8, :cond_1b

    const/16 v8, 0x1000

    goto/16 :goto_8

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    if-eq v10, v11, :cond_1e

    if-eq v10, v12, :cond_1d

    if-eq v10, v9, :cond_1c

    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xfc

    const/4 v10, 0x2

    :goto_d
    shr-int/2addr v8, v10

    or-int/2addr v8, v9

    const/4 v11, 0x1

    goto :goto_f

    :cond_1c
    const/4 v10, 0x2

    add-int/lit8 v9, v8, 0x5

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    :goto_e
    and-int/lit8 v8, v8, 0x3c

    goto :goto_d

    :cond_1d
    const/4 v10, 0x2

    add-int/lit8 v9, v8, 0x4

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v8, v8, 0x7

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    goto :goto_e

    :cond_1e
    const/4 v10, 0x2

    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v11, 0x1

    and-int/2addr v8, v11

    shl-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xfc

    shr-int/2addr v9, v10

    or-int/2addr v8, v9

    :goto_f
    add-int/2addr v8, v11

    mul-int/lit8 v8, v8, 0x20

    goto :goto_10

    :cond_1f
    const/4 v11, 0x1

    move v8, v13

    goto :goto_10

    :cond_20
    const/4 v11, 0x1

    invoke-static/range {p1 .. p1}, Lx9e;->b(Ljava/nio/ByteBuffer;)I

    move-result v8

    :goto_10
    iput v8, v1, Lxij;->C:I

    if-eqz v8, :cond_21

    goto :goto_11

    :cond_21
    return v11

    :cond_22
    :goto_11
    iget-object v8, v1, Lxij;->u:Ldij;

    if-eqz v8, :cond_24

    invoke-virtual/range {p0 .. p0}, Lxij;->N()Z

    move-result v8

    if-nez v8, :cond_23

    const/4 v8, 0x0

    return v8

    :cond_23
    invoke-virtual {v1, v3, v4}, Lxij;->D(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lxij;->u:Ldij;

    :cond_24
    iget-wide v8, v1, Lxij;->F:J

    iget-object v10, v1, Lxij;->n:Lbij;

    invoke-virtual/range {p0 .. p0}, Lxij;->A()J

    move-result-wide v11

    iget-object v13, v1, Lxij;->c:Lhjj;

    invoke-virtual {v13}, Lhjj;->i()J

    move-result-wide v13

    sub-long/2addr v11, v13

    iget-object v10, v10, Lbij;->a:Lerj;

    iget v10, v10, Lerj;->F:I

    invoke-static {v11, v12, v10}, Lkfh;->O(JI)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-boolean v10, v1, Lxij;->D:Z

    if-nez v10, :cond_26

    sub-long v10, v8, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v10, v10, v12

    if-lez v10, :cond_26

    iget-object v10, v1, Lxij;->l:Lohj;

    if-eqz v10, :cond_25

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {v11, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(JJ)V

    invoke-interface {v10, v11}, Lohj;->b(Ljava/lang/Exception;)V

    :cond_25
    const/4 v10, 0x1

    iput-boolean v10, v1, Lxij;->D:Z

    :cond_26
    iget-boolean v10, v1, Lxij;->D:Z

    if-eqz v10, :cond_28

    invoke-virtual/range {p0 .. p0}, Lxij;->N()Z

    move-result v10

    if-nez v10, :cond_27

    const/4 v10, 0x0

    return v10

    :cond_27
    const/4 v10, 0x0

    sub-long v8, v3, v8

    iget-wide v11, v1, Lxij;->F:J

    add-long/2addr v11, v8

    iput-wide v11, v1, Lxij;->F:J

    iput-boolean v10, v1, Lxij;->D:Z

    invoke-virtual {v1, v3, v4}, Lxij;->D(J)V

    iget-object v10, v1, Lxij;->l:Lohj;

    if-eqz v10, :cond_28

    cmp-long v6, v8, v6

    if-eqz v6, :cond_28

    check-cast v10, Lbjj;

    iget-object v6, v10, Lbjj;->a:Ldjj;

    invoke-virtual {v6}, Ldjj;->z0()V

    :cond_28
    iget-object v6, v1, Lxij;->n:Lbij;

    iget v6, v6, Lbij;->c:I

    if-nez v6, :cond_29

    iget-wide v6, v1, Lxij;->y:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Lxij;->y:J

    goto :goto_12

    :cond_29
    iget-wide v6, v1, Lxij;->z:J

    iget v8, v1, Lxij;->C:I

    int-to-long v8, v8

    int-to-long v10, v5

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lxij;->z:J

    :goto_12
    iput-object v2, v1, Lxij;->H:Ljava/nio/ByteBuffer;

    iput v5, v1, Lxij;->I:I

    :cond_2a
    invoke-virtual {v1, v3, v4}, Lxij;->I(J)V

    iget-object v2, v1, Lxij;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    iput-object v2, v1, Lxij;->H:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, v1, Lxij;->I:I

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lxij;->B()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lthj;->i(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lxij;->zzf()V

    return v3

    :cond_2c
    return v2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lxij;->F()V

    throw v11
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_5 .. :try_end_5} :catch_1

    :goto_13
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Z

    if-nez v2, :cond_2e

    iget-object v1, v1, Lxij;->i:Lgij;

    invoke-virtual {v1, v0}, Lgij;->b(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1

    :cond_2e
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final h(Lerj;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lxij;->a(Lerj;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lerj;)Lygj;
    .locals 1

    iget-boolean v0, p0, Lxij;->S:Z

    if-eqz v0, :cond_0

    sget-object p0, Lygj;->d:Lygj;

    return-object p0

    :cond_0
    iget-object v0, p0, Lxij;->Z:Lvhj;

    iget-object p0, p0, Lxij;->t:Lhvg;

    invoke-virtual {v0, p1, p0}, Lvhj;->a(Lerj;Lhvg;)Lygj;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lerj;I[I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lxij;->G()V

    iget-object v1, v2, Lerj;->o:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget v1, v2, Lerj;->G:I

    invoke-static {v1}, Lkfh;->k(I)Z

    move-result v5

    invoke-static {v5}, Ln7g;->d(Z)V

    iget v5, v2, Lerj;->E:I

    invoke-static {v1}, Lkfh;->F(I)I

    move-result v6

    mul-int/2addr v6, v5

    new-instance v7, Ll4i;

    invoke-direct {v7}, Ll4i;-><init>()V

    iget-object v8, v0, Lxij;->d:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v7, v8}, Ll4i;->i(Ljava/lang/Iterable;)Ll4i;

    iget-object v8, v0, Lxij;->Y:Lcij;

    invoke-virtual {v8}, Lcij;->e()[Lvqf;

    move-result-object v8

    invoke-virtual {v7, v8}, Ll4i;->h([Ljava/lang/Object;)Ll4i;

    new-instance v8, Laof;

    invoke-virtual {v7}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v7

    invoke-direct {v8, v7}, Laof;-><init>(Lcom/google/android/gms/internal/ads/zzfww;)V

    iget-object v7, v0, Lxij;->o:Laof;

    invoke-virtual {v8, v7}, Laof;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v8, v0, Lxij;->o:Laof;

    :cond_0
    iget-object v7, v0, Lxij;->c:Lhjj;

    iget v9, v2, Lerj;->H:I

    iget v10, v2, Lerj;->I:I

    invoke-virtual {v7, v9, v10}, Lhjj;->k(II)V

    iget-object v7, v0, Lxij;->b:Luhj;

    move-object/from16 v9, p3

    invoke-virtual {v7, v9}, Luhj;->i([I)V

    new-instance v7, Lcpf;

    iget v9, v2, Lerj;->F:I

    invoke-direct {v7, v9, v5, v1}, Lcpf;-><init>(III)V

    :try_start_0
    invoke-virtual {v8, v7}, Laof;->a(Lcpf;)Lcpf;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcm; {:try_start_0 .. :try_end_0} :catch_0

    iget v5, v1, Lcpf;->c:I

    iget v7, v1, Lcpf;->a:I

    iget v1, v1, Lcpf;->b:I

    invoke-static {v1}, Lkfh;->D(I)I

    move-result v9

    invoke-static {v5}, Lkfh;->F(I)I

    move-result v10

    mul-int/2addr v10, v1

    move-object v11, v8

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqa;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/Throwable;Lerj;)V

    throw v0

    :cond_1
    new-instance v1, Laof;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v5

    invoke-direct {v1, v5}, Laof;-><init>(Lcom/google/android/gms/internal/ads/zzfww;)V

    iget v5, v2, Lerj;->F:I

    sget-object v6, Lygj;->d:Lygj;

    iget-object v6, v0, Lxij;->q:Lggj;

    iget-object v7, v0, Lxij;->t:Lhvg;

    invoke-virtual {v6, v2, v7}, Lggj;->b(Lerj;Lhvg;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    move-object v11, v1

    move v10, v4

    move v9, v6

    move v6, v10

    move/from16 v20, v7

    move v7, v5

    move/from16 v5, v20

    :goto_0
    const-string v1, ") for: "

    if-eqz v5, :cond_c

    if-eqz v9, :cond_b

    iget v1, v2, Lerj;->j:I

    iget-object v12, v2, Lerj;->o:Ljava/lang/String;

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v1, v4, :cond_2

    const v1, 0xbb800

    :cond_2
    invoke-static {v7, v9, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    if-eq v12, v13, :cond_3

    move v13, v14

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    invoke-static {v13}, Ln7g;->f(Z)V

    if-eq v10, v4, :cond_4

    move v13, v10

    goto :goto_2

    :cond_4
    move v13, v14

    :goto_2
    const v15, 0x3d090

    if-eqz v8, :cond_9

    const-wide/32 v16, 0xf4240

    if-eq v8, v14, :cond_8

    const/4 v14, 0x5

    const/16 v3, 0x8

    if-ne v5, v14, :cond_5

    const v15, 0x7a120

    goto :goto_3

    :cond_5
    if-ne v5, v3, :cond_6

    const v15, 0xf4240

    move v5, v3

    :cond_6
    :goto_3
    if-eq v1, v4, :cond_7

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v1, v3, v14}, Lm6i;->b(IILjava/math/RoundingMode;)I

    move-result v1

    goto :goto_4

    :cond_7
    invoke-static {v5}, Lzij;->b(I)I

    move-result v1

    :goto_4
    int-to-long v14, v15

    move/from16 p3, v5

    int-to-long v4, v1

    mul-long/2addr v14, v4

    div-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/s7;->b(J)I

    move-result v1

    move/from16 v14, p3

    goto :goto_6

    :cond_8
    invoke-static {v5}, Lzij;->b(I)I

    move-result v1

    int-to-long v14, v1

    const-wide/32 v18, 0x2faf080

    mul-long v14, v14, v18

    div-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/s7;->b(J)I

    move-result v1

    :goto_5
    move v14, v5

    goto :goto_6

    :cond_9
    mul-int/lit8 v1, v12, 0x4

    invoke-static {v15, v7, v13}, Lzij;->a(III)I

    move-result v4

    const v14, 0xb71b0

    invoke-static {v14, v7, v13}, Lzij;->a(III)I

    move-result v14

    sget v15, Lkfh;->a:I

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :goto_6
    int-to-double v4, v1

    double-to-int v1, v4

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v13

    const/4 v3, -0x1

    add-int/2addr v1, v3

    div-int/2addr v1, v13

    mul-int v12, v1, v13

    const/4 v1, 0x0

    iput-boolean v1, v0, Lxij;->S:Z

    new-instance v15, Lbij;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move v3, v6

    move v4, v8

    move v5, v10

    move v6, v7

    move v7, v9

    move v8, v14

    move v9, v12

    move-object v10, v11

    move/from16 v11, v17

    move v12, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lbij;-><init>(Lerj;IIIIIIILaof;ZZZ)V

    invoke-virtual/range {p0 .. p0}, Lxij;->O()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v15, v0, Lxij;->m:Lbij;

    return-void

    :cond_a
    iput-object v15, v0, Lxij;->n:Lbij;

    return-void

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqa;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output channel config (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/String;Lerj;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqa;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output encoding (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/String;Lerj;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqa;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unable to configure passthrough for: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/String;Lerj;)V

    throw v0
.end method

.method public final k(Ltbg;)V
    .locals 0

    iget-object p0, p0, Lxij;->f:Lthj;

    invoke-virtual {p0, p1}, Lthj;->e(Ltbg;)V

    return-void
.end method

.method public final l(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lsgj;

    invoke-direct {v0, p1}, Lsgj;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_0
    iput-object v0, p0, Lxij;->Q:Lsgj;

    iget-object v0, p0, Lxij;->r:Lqgj;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lqgj;->h(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Lxij;->p:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lxij;->Q:Lsgj;

    invoke-static {p1, p0}, Lxhj;->a(Landroid/media/AudioTrack;Lsgj;)V

    :cond_2
    return-void
.end method

.method public final m(Lohj;)V
    .locals 0

    iput-object p1, p0, Lxij;->l:Lohj;

    return-void
.end method

.method public final n(F)V
    .locals 1

    iget v0, p0, Lxij;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lxij;->G:F

    invoke-virtual {p0}, Lxij;->L()V

    :cond_0
    return-void
.end method

.method public final o(Ltfj;)V
    .locals 0

    iput-object p1, p0, Lxij;->k:Ltfj;

    return-void
.end method

.method public final p(Lhvg;)V
    .locals 1

    iget-object v0, p0, Lxij;->t:Lhvg;

    invoke-virtual {v0, p1}, Lhvg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lxij;->t:Lhvg;

    iget-object v0, p0, Lxij;->r:Lqgj;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lqgj;->g(Lhvg;)V

    :cond_1
    invoke-virtual {p0}, Lxij;->zzf()V

    return-void
.end method

.method public final y(Lggj;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lxij;->U:Landroid/os/Looper;

    if-eq v1, v0, :cond_2

    const-string p0, "null"

    if-nez v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current looper ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not the playback looper ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lxij;->q:Lggj;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lggj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lxij;->q:Lggj;

    iget-object p0, p0, Lxij;->l:Lohj;

    if-eqz p0, :cond_3

    check-cast p0, Lbjj;

    iget-object p0, p0, Lbjj;->a:Ldjj;

    invoke-static {p0}, Ldjj;->P0(Ldjj;)V

    :cond_3
    return-void
.end method

.method public final zzc()Lvwe;
    .locals 0

    iget-object p0, p0, Lxij;->w:Lvwe;

    return-object p0
.end method

.method public final zzf()V
    .locals 12

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lxij;->y:J

    iput-wide v2, p0, Lxij;->z:J

    iput-wide v2, p0, Lxij;->A:J

    iput-wide v2, p0, Lxij;->B:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxij;->T:Z

    iput v0, p0, Lxij;->C:I

    new-instance v11, Ldij;

    iget-object v5, p0, Lxij;->w:Lvwe;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Ldij;-><init>(Lvwe;JJLwij;)V

    iput-object v11, p0, Lxij;->v:Ldij;

    iput-wide v2, p0, Lxij;->F:J

    iput-object v1, p0, Lxij;->u:Ldij;

    iget-object v4, p0, Lxij;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lxij;->H:Ljava/nio/ByteBuffer;

    iput v0, p0, Lxij;->I:I

    iput-object v1, p0, Lxij;->J:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lxij;->L:Z

    iput-boolean v0, p0, Lxij;->K:Z

    iput-boolean v0, p0, Lxij;->M:Z

    iget-object v0, p0, Lxij;->c:Lhjj;

    invoke-virtual {v0}, Lhjj;->j()V

    invoke-virtual {p0}, Lxij;->M()V

    iget-object v0, p0, Lxij;->f:Lthj;

    invoke-virtual {v0}, Lthj;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v4, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {v4}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lxij;->h:Lvij;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {v4, v5}, Lvij;->b(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v4, p0, Lxij;->n:Lbij;

    invoke-virtual {v4}, Lbij;->a()Lehj;

    move-result-object v4

    iget-object v5, p0, Lxij;->m:Lbij;

    if-eqz v5, :cond_2

    iput-object v5, p0, Lxij;->n:Lbij;

    iput-object v1, p0, Lxij;->m:Lbij;

    :cond_2
    invoke-virtual {v0}, Lthj;->c()V

    sget v0, Lkfh;->a:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lxij;->s:Lfij;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lfij;->b()V

    iput-object v1, p0, Lxij;->s:Lfij;

    :cond_3
    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    iget-object v5, p0, Lxij;->l:Lohj;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v7, Lxij;->a0:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v8, :cond_4

    const-string v8, "ExoPlayer:AudioTrackReleaseThread"

    new-instance v9, Ljeh;

    invoke-direct {v9, v8}, Ljeh;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    sput-object v8, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    sget v8, Lxij;->c0:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lxij;->c0:I

    sget-object v8, Lxij;->b0:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqm;

    invoke-direct {v9, v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Landroid/media/AudioTrack;Lohj;Landroid/os/Handler;Lehj;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-interface {v8, v9, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lxij;->p:Landroid/media/AudioTrack;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    iget-object v0, p0, Lxij;->j:Lgij;

    invoke-virtual {v0}, Lgij;->a()V

    iget-object v0, p0, Lxij;->i:Lgij;

    invoke-virtual {v0}, Lgij;->a()V

    iput-wide v2, p0, Lxij;->V:J

    iput-wide v2, p0, Lxij;->W:J

    iget-object p0, p0, Lxij;->X:Landroid/os/Handler;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxij;->D:Z

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxij;->N:Z

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxij;->f:Lthj;

    invoke-virtual {v0}, Lthj;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-static {v0}, Lxij;->P(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxij;->N:Z

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxij;->f:Lthj;

    invoke-virtual {v0}, Lthj;->f()V

    iget-object p0, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1

    iget-boolean v0, p0, Lxij;->K:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxij;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxij;->H()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxij;->K:Z

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 0

    iget-object p0, p0, Lxij;->r:Lqgj;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lqgj;->i()V

    :cond_0
    return-void
.end method

.method public final zzl()V
    .locals 5

    invoke-virtual {p0}, Lxij;->zzf()V

    iget-object v0, p0, Lxij;->d:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvqf;

    invoke-interface {v4}, Lvqf;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxij;->e:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvqf;

    invoke-interface {v4}, Lvqf;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lxij;->o:Laof;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Laof;->f()V

    :cond_2
    iput-boolean v2, p0, Lxij;->N:Z

    iput-boolean v2, p0, Lxij;->S:Z

    return-void
.end method

.method public final zzv(Z)V
    .locals 0

    iput-boolean p1, p0, Lxij;->x:Z

    iget-object p1, p0, Lxij;->w:Lvwe;

    invoke-virtual {p0, p1}, Lxij;->J(Lvwe;)V

    return-void
.end method

.method public final zzy()Z
    .locals 3

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lkfh;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lxij;->p:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxij;->M:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lxij;->f:Lthj;

    invoke-virtual {p0}, Lxij;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lthj;->g(J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzz()Z
    .locals 3

    invoke-virtual {p0}, Lxij;->O()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lxij;->K:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lxij;->zzy()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method
