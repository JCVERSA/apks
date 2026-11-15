.class public final Lxhf;
.super Lcom/google/android/gms/internal/ads/z3;
.source "SourceFile"

# interfaces
.implements Lixi;


# static fields
.field public static final p:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public e:Ljava/lang/String;

.field public final f:Lbhf;

.field public g:Z

.field public final h:Lwhf;

.field public final i:Llhf;

.field public j:Ljava/nio/ByteBuffer;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lxhf;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lchf;Lbhf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z3;-><init>(Lchf;)V

    iput-object p2, p0, Lxhf;->f:Lbhf;

    new-instance p2, Lwhf;

    invoke-direct {p2}, Lwhf;-><init>()V

    iput-object p2, p0, Lxhf;->h:Lwhf;

    new-instance p2, Llhf;

    invoke-direct {p2}, Llhf;-><init>()V

    iput-object p2, p0, Lxhf;->i:Llhf;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxhf;->l:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lchf;->zzr()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzftu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzftu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lxhf;->m:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lchf;->zzf()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lxhf;->n:I

    sget-object p0, Lxhf;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static s()I
    .locals 1

    sget-object v0, Lxhf;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxhf;->g:Z

    return-void
.end method

.method public final f(Lv9i;Lcfi;ZI)V
    .locals 0

    return-void
.end method

.method public final j(Lv9i;Lcfi;Z)V
    .locals 0

    instance-of p2, p1, Ljni;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lxhf;->h:Lwhf;

    check-cast p1, Ljni;

    invoke-virtual {p0, p1}, Lwhf;->b(Ljni;)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lxhf;->e:Ljava/lang/String;

    const-string v3, "error"

    invoke-static/range {p1 .. p1}, Lxhf;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lhii;

    invoke-direct {v0}, Lhii;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/z3;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lhii;->e(Ljava/lang/String;)Lhii;

    iget-object v6, v1, Lxhf;->f:Lbhf;

    iget v7, v6, Lbhf;->d:I

    invoke-virtual {v0, v7}, Lhii;->b(I)Lhii;

    iget v7, v6, Lbhf;->e:I

    invoke-virtual {v0, v7}, Lhii;->c(I)Lhii;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lhii;->a(Z)Lhii;

    invoke-virtual {v0, v1}, Lhii;->d(Lixi;)Lhii;

    invoke-virtual {v0}, Lhii;->f()Ljni;

    move-result-object v10

    iget-boolean v0, v6, Lbhf;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljhf;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/z3;->b:Landroid/content/Context;

    iget-object v11, v1, Lxhf;->m:Ljava/lang/String;

    iget v12, v1, Lxhf;->n:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljhf;-><init>(Landroid/content/Context;Lv9i;Ljava/lang/String;ILixi;Lghf;)V

    move-object v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v0, Lcfi;

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    const-wide/16 v13, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcfi;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lv9i;->j(Lcfi;)J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/z3;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchf;

    if-eqz v0, :cond_1

    invoke-interface {v0, v4, v1}, Lchf;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v8

    sget-object v11, Lcye;->O:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v11}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v13, Lcye;->N:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v14

    invoke-virtual {v14, v13}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget v6, v6, Lbhf;->c:I

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v1, Lxhf;->j:Ljava/nio/ByteBuffer;

    const/16 v6, 0x2000

    new-array v15, v6, [B

    move-wide/from16 v16, v8

    :goto_1
    iget-object v7, v1, Lxhf;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v10, v15, v5, v7}, Lk8j;->b([BII)I

    move-result v7

    const/4 v6, -0x1

    if-ne v7, v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, v1, Lxhf;->o:Z

    iget-object v0, v1, Lxhf;->i:Llhf;

    iget-object v6, v1, Lxhf;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Llhf;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-long v6, v0

    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/google/android/gms/internal/ads/z3;->e(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    :cond_2
    iget-object v6, v1, Lxhf;->l:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v5, v1, Lxhf;->g:Z

    if-nez v5, :cond_3

    iget-object v5, v1, Lxhf;->j:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v5, v15, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_5

    :cond_3
    move-object/from16 v18, v3

    :goto_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v1, Lxhf;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lxhf;->x()V

    goto :goto_2

    :goto_4
    return v3

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_4
    const/4 v3, 0x1

    iget-boolean v5, v1, Lxhf;->g:Z

    if-nez v5, :cond_7

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    sub-long v19, v5, v16

    cmp-long v7, v19, v11

    if-ltz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lxhf;->x()V

    move-wide/from16 v16, v5

    :cond_5
    sub-long/2addr v5, v8

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v13

    cmp-long v5, v5, v19

    if-gtz v5, :cond_6

    move-object/from16 v3, v18

    const/4 v5, 0x0

    const/16 v6, 0x2000

    goto :goto_1

    :cond_6
    const-string v3, "downloadTimeout"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout exceeded. Limit: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " sec"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_7
    :try_start_5
    const-string v3, "externalAbort"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v0, Ljava/io/IOException;

    iget-object v5, v1, Lxhf;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Precache abort at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_6
    move-object/from16 v3, v18

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to preload url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/z3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final p(Lv9i;Lcfi;Z)V
    .locals 0

    return-void
.end method

.method public final q(Lv9i;Lcfi;Z)V
    .locals 0

    return-void
.end method

.method public final release()V
    .locals 0

    sget-object p0, Lxhf;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxhf;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final u()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lxhf;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxhf;->j:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lxhf;->k:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-boolean v2, p0, Lxhf;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lxhf;->g:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lxhf;->j:Ljava/nio/ByteBuffer;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final v()Z
    .locals 0

    iget-boolean p0, p0, Lxhf;->o:Z

    return p0
.end method

.method public final x()V
    .locals 14

    iget-object v0, p0, Lxhf;->h:Lwhf;

    invoke-virtual {v0}, Lwhf;->a()J

    move-result-wide v0

    long-to-int v6, v0

    iget-object v0, p0, Lxhf;->i:Llhf;

    iget-object v1, p0, Lxhf;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Llhf;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lxhf;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    int-to-float v1, v5

    int-to-float v2, v6

    int-to-float v3, v0

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {}, Lugf;->O()I

    move-result v12

    invoke-static {}, Lugf;->Q()I

    move-result v13

    iget-object v3, p0, Lxhf;->e:Ljava/lang/String;

    invoke-static {v3}, Lxhf;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-long v7, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v11, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    int-to-long v9, v0

    move-object v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/z3;->g(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    return-void
.end method
