.class public final Llfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltaj;
.implements Lnfj;


# instance fields
.field public A:I

.field public B:Z

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lpfj;

.field public final e:Landroid/media/metrics/PlaybackSession;

.field public final f:J

.field public final g:Le4f;

.field public final h:Ly2f;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public k:Ljava/lang/String;

.field public l:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public m:I

.field public n:I

.field public o:I

.field public p:Lcom/google/android/gms/internal/ads/zzba;

.field public q:Ljfj;

.field public r:Ljfj;

.field public s:Ljfj;

.field public t:Lerj;

.field public u:Lerj;

.field public v:Lerj;

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Llfj;->b:Landroid/content/Context;

    iput-object p2, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lq8g;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Llfj;->c:Ljava/util/concurrent/Executor;

    new-instance p1, Le4f;

    invoke-direct {p1}, Le4f;-><init>()V

    iput-object p1, p0, Llfj;->g:Le4f;

    new-instance p1, Ly2f;

    invoke-direct {p1}, Ly2f;-><init>()V

    iput-object p1, p0, Llfj;->h:Ly2f;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Llfj;->j:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Llfj;->i:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Llfj;->f:J

    const/4 p1, 0x0

    iput p1, p0, Llfj;->n:I

    iput p1, p0, Llfj;->o:I

    new-instance p1, Lcfj;

    sget-object p2, Lcfj;->h:Lk3i;

    invoke-direct {p1, p2}, Lcfj;-><init>(Lk3i;)V

    iput-object p1, p0, Llfj;->d:Lpfj;

    invoke-interface {p1, p0}, Lpfj;->a(Lnfj;)V

    return-void
.end method

.method public static A(I)I
    .locals 0

    invoke-static {p0}, Lkfh;->G(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final B()V
    .locals 7

    iget-object v0, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Llfj;->B:Z

    if-eqz v2, :cond_3

    iget v2, p0, Llfj;->A:I

    invoke-static {v0, v2}, Lni6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Llfj;->y:I

    invoke-static {v0, v2}, Loi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Llfj;->z:I

    invoke-static {v0, v2}, Lpi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Llfj;->i:Ljava/util/HashMap;

    iget-object v2, p0, Llfj;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Lqi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Llfj;->j:Ljava/util/HashMap;

    iget-object v2, p0, Llfj;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Lsi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Lti6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lui6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    iget-object v2, p0, Llfj;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Llfj;Landroid/media/metrics/PlaybackMetrics;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Llfj;->k:Ljava/lang/String;

    iput v1, p0, Llfj;->A:I

    iput v1, p0, Llfj;->y:I

    iput v1, p0, Llfj;->z:I

    iput-object v0, p0, Llfj;->t:Lerj;

    iput-object v0, p0, Llfj;->u:Lerj;

    iput-object v0, p0, Llfj;->v:Lerj;

    iput-boolean v1, p0, Llfj;->B:Z

    return-void
.end method

.method public static u(Landroid/content/Context;)Llfj;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lli6;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Llfj;

    invoke-static {v0}, Lmi6;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Llfj;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method

.method public static synthetic v(Llfj;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    iget-object p0, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0, p1}, Lsh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method

.method public static synthetic w(Llfj;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 0

    iget-object p0, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0, p1}, Lrh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method

.method public static synthetic x(Llfj;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    iget-object p0, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0, p1}, Lxh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method

.method public static synthetic y(Llfj;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    iget-object p0, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0, p1}, Lyi6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public static synthetic z(Llfj;Landroid/media/metrics/NetworkEvent;)V
    .locals 0

    iget-object p0, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0, p1}, Lkh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    return-void
.end method


# virtual methods
.method public final C(JLerj;I)V
    .locals 6

    iget-object p4, p0, Llfj;->u:Lerj;

    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Llfj;->u:Lerj;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Llfj;->u:Lerj;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Llfj;->r(IJLerj;I)V

    return-void
.end method

.method public final D(JLerj;I)V
    .locals 6

    iget-object p4, p0, Llfj;->v:Lerj;

    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Llfj;->v:Lerj;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Llfj;->v:Lerj;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Llfj;->r(IJLerj;I)V

    return-void
.end method

.method public final synthetic a(Lraj;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public final b(Lraj;Lv0f;Lv0f;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Llfj;->w:Z

    move p4, p1

    :cond_0
    iput p4, p0, Llfj;->m:I

    return-void
.end method

.method public final c(Lraj;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 0

    iput-object p2, p0, Llfj;->p:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method

.method public final d(Lraj;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public final e(Lraj;Ld1j;)V
    .locals 1

    iget p1, p0, Llfj;->y:I

    iget v0, p2, Ld1j;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Llfj;->y:I

    iget p1, p0, Llfj;->z:I

    iget p2, p2, Ld1j;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Llfj;->z:I

    return-void
.end method

.method public final f(Lraj;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lraj;->d:Lbnj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbnj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Llfj;->B()V

    iput-object p2, p0, Llfj;->k:Ljava/lang/String;

    invoke-static {}, Ldj6;->a()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "AndroidXMedia3"

    invoke-static {p2, v1}, Ldi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "1.6.0"

    invoke-static {p2, v1}, Lei6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p1, Lraj;->b:Lw4f;

    invoke-virtual {p0, p1, v0}, Llfj;->p(Lw4f;Lbnj;)V

    return-void
.end method

.method public final g(Lraj;Lzhf;)V
    .locals 3

    iget-object p1, p0, Llfj;->q:Ljfj;

    if-eqz p1, :cond_0

    iget-object v0, p1, Ljfj;->a:Lerj;

    iget v1, v0, Lerj;->w:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lerj;->b()Lgpj;

    move-result-object v0

    iget v1, p2, Lzhf;->a:I

    invoke-virtual {v0, v1}, Lgpj;->J(I)Lgpj;

    iget p2, p2, Lzhf;->b:I

    invoke-virtual {v0, p2}, Lgpj;->m(I)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p2

    iget-object p1, p1, Ljfj;->c:Ljava/lang/String;

    new-instance v0, Ljfj;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Ljfj;-><init>(Lerj;ILjava/lang/String;)V

    iput-object v0, p0, Llfj;->q:Ljfj;

    :cond_0
    return-void
.end method

.method public final synthetic h(Lraj;IJ)V
    .locals 0

    return-void
.end method

.method public final i(Ll1f;Lsaj;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Lsaj;->b()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lsaj;->b()I

    move-result v5

    const/16 v6, 0xb

    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v4}, Lsaj;->a(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lsaj;->c(I)Lraj;

    move-result-object v7

    if-nez v5, :cond_1

    iget-object v5, v0, Llfj;->d:Lpfj;

    invoke-interface {v5, v7}, Lpfj;->b(Lraj;)V

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_2

    iget-object v5, v0, Llfj;->d:Lpfj;

    iget v6, v0, Llfj;->m:I

    invoke-interface {v5, v7, v6}, Lpfj;->f(Lraj;I)V

    goto :goto_1

    :cond_2
    iget-object v5, v0, Llfj;->d:Lpfj;

    invoke-interface {v5, v7}, Lpfj;->c(Lraj;)V

    :goto_1
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3}, Lsaj;->d(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v3}, Lsaj;->c(I)Lraj;

    move-result-object v7

    iget-object v8, v0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lraj;->b:Lw4f;

    iget-object v7, v7, Lraj;->d:Lbnj;

    invoke-virtual {v0, v8, v7}, Llfj;->p(Lw4f;Lbnj;)V

    :cond_4
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lsaj;->d(I)Z

    move-result v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v8, :cond_c

    iget-object v8, v0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v8, :cond_c

    invoke-interface/range {p1 .. p1}, Ll1f;->zzp()Lnaf;

    move-result-object v8

    invoke-virtual {v8}, Lnaf;->a()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move v13, v3

    :goto_2
    if-ge v13, v12, :cond_7

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lx9f;

    move v15, v3

    :goto_3
    iget v6, v14, Lx9f;->a:I

    add-int/lit8 v16, v13, 0x1

    if-ge v15, v6, :cond_6

    invoke-virtual {v14, v15}, Lx9f;->d(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v14, v15}, Lx9f;->b(I)Lerj;

    move-result-object v6

    iget-object v6, v6, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr v15, v2

    goto :goto_3

    :cond_6
    move/from16 v13, v16

    const/16 v6, 0xb

    goto :goto_2

    :cond_7
    move-object v6, v11

    :goto_4
    if-eqz v6, :cond_c

    iget-object v8, v0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v12, Lkfh;->a:I

    invoke-static {v8}, Lbi6;->a(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v8

    move v12, v3

    :goto_5
    iget v13, v6, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v12, v13, :cond_b

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzr;->zza:Ljava/util/UUID;

    sget-object v14, Leui;->d:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v6, v10

    goto :goto_6

    :cond_8
    sget-object v14, Leui;->e:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move v6, v7

    goto :goto_6

    :cond_9
    sget-object v14, Leui;->c:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v6, 0x6

    goto :goto_6

    :cond_a
    add-int/2addr v12, v2

    goto :goto_5

    :cond_b
    move v6, v2

    :goto_6
    invoke-static {v8, v6}, Lci6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_c
    const/16 v6, 0x3f3

    invoke-virtual {v1, v6}, Lsaj;->d(I)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v0, Llfj;->A:I

    add-int/2addr v6, v2

    iput v6, v0, Llfj;->A:I

    :cond_d
    iget-object v6, v0, Llfj;->p:Lcom/google/android/gms/internal/ads/zzba;

    const/16 v16, 0x9

    if-nez v6, :cond_e

    goto/16 :goto_d

    :cond_e
    iget-object v8, v0, Llfj;->b:Landroid/content/Context;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzba;->zza:I

    const/16 v12, 0x3e9

    if-ne v9, v12, :cond_10

    const/16 v8, 0x14

    :cond_f
    :goto_7
    move v9, v3

    goto/16 :goto_c

    :cond_10
    move-object v12, v6

    check-cast v12, Lcom/google/android/gms/internal/ads/zzii;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzii;->zzc:I

    if-ne v13, v2, :cond_11

    move v13, v2

    goto :goto_8

    :cond_11
    move v13, v3

    :goto_8
    iget v12, v12, Lcom/google/android/gms/internal/ads/zzii;->zzg:I

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v14, Ljava/io/IOException;

    const/16 v17, 0x17

    if-eqz v15, :cond_25

    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzgx;

    if-eqz v12, :cond_12

    check-cast v14, Lcom/google/android/gms/internal/ads/zzgx;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzgx;->zzc:I

    move v9, v8

    const/4 v8, 0x5

    goto/16 :goto_c

    :cond_12
    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzgw;

    if-nez v12, :cond_13

    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzaz;

    if-eqz v12, :cond_14

    :cond_13
    move v9, v3

    const/16 v8, 0xb

    goto/16 :goto_c

    :cond_14
    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzgv;

    if-nez v12, :cond_20

    instance-of v13, v14, Lcom/google/android/gms/internal/ads/zzhf;

    if-eqz v13, :cond_15

    goto/16 :goto_b

    :cond_15
    const/16 v8, 0x3ea

    if-ne v9, v8, :cond_16

    const/16 v8, 0x15

    goto :goto_7

    :cond_16
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzrr;

    if-eqz v8, :cond_1d

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v9, :cond_17

    check-cast v8, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v8}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkfh;->H(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Llfj;->A(I)I

    move-result v9

    :goto_9
    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    goto/16 :goto_c

    :cond_17
    sget v9, Lkfh;->a:I

    instance-of v9, v8, Landroid/media/MediaDrmResetException;

    if-eqz v9, :cond_18

    const/16 v8, 0x1b

    goto :goto_7

    :cond_18
    instance-of v9, v8, Landroid/media/NotProvisionedException;

    if-eqz v9, :cond_19

    const/16 v8, 0x18

    goto :goto_7

    :cond_19
    instance-of v9, v8, Landroid/media/DeniedByServerException;

    if-eqz v9, :cond_1a

    const/16 v8, 0x1d

    goto/16 :goto_7

    :cond_1a
    instance-of v9, v8, Lcom/google/android/gms/internal/ads/zzsb;

    if-eqz v9, :cond_1b

    :goto_a
    move v9, v3

    move/from16 v8, v17

    goto/16 :goto_c

    :cond_1b
    instance-of v8, v8, Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v8, :cond_1c

    const/16 v8, 0x1c

    goto/16 :goto_7

    :cond_1c
    const/16 v8, 0x1e

    goto/16 :goto_7

    :cond_1d
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v8, :cond_1f

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/io/FileNotFoundException;

    if-eqz v8, :cond_1f

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v9, v8, Landroid/system/ErrnoException;

    const/16 v12, 0x1f

    if-eqz v9, :cond_1e

    check-cast v8, Landroid/system/ErrnoException;

    iget v8, v8, Landroid/system/ErrnoException;->errno:I

    sget v9, Landroid/system/OsConstants;->EACCES:I

    if-ne v8, v9, :cond_1e

    const/16 v8, 0x20

    goto/16 :goto_7

    :cond_1e
    move v9, v3

    move v8, v12

    goto/16 :goto_c

    :cond_1f
    move v9, v3

    move/from16 v8, v16

    goto/16 :goto_c

    :cond_20
    :goto_b
    invoke-static {v8}, Lv2h;->b(Landroid/content/Context;)Lv2h;

    move-result-object v8

    invoke-virtual {v8}, Lv2h;->a()I

    move-result v8

    if-ne v8, v2, :cond_21

    move v9, v3

    move v8, v10

    goto/16 :goto_c

    :cond_21
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v9, v8, Ljava/net/UnknownHostException;

    if-eqz v9, :cond_22

    move v9, v3

    const/4 v8, 0x6

    goto/16 :goto_c

    :cond_22
    instance-of v8, v8, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_23

    move v9, v3

    const/4 v8, 0x7

    goto/16 :goto_c

    :cond_23
    if-eqz v12, :cond_24

    check-cast v14, Lcom/google/android/gms/internal/ads/zzgv;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzgv;->zzb:I

    if-ne v8, v2, :cond_24

    move v9, v3

    const/4 v8, 0x4

    goto/16 :goto_c

    :cond_24
    move v9, v3

    const/16 v8, 0x8

    goto/16 :goto_c

    :cond_25
    if-eqz v13, :cond_26

    const/16 v8, 0x23

    if-eqz v12, :cond_f

    if-ne v12, v2, :cond_26

    goto/16 :goto_7

    :cond_26
    if-eqz v13, :cond_27

    if-ne v12, v10, :cond_27

    const/16 v8, 0xf

    goto/16 :goto_7

    :cond_27
    if-eqz v13, :cond_28

    if-ne v12, v7, :cond_28

    goto/16 :goto_a

    :cond_28
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zztc;

    if-eqz v8, :cond_29

    check-cast v14, Lcom/google/android/gms/internal/ads/zztc;

    iget-object v8, v14, Lcom/google/android/gms/internal/ads/zztc;->zzd:Ljava/lang/String;

    invoke-static {v8}, Lkfh;->H(Ljava/lang/String;)I

    move-result v8

    move v9, v8

    const/16 v8, 0xd

    goto :goto_c

    :cond_29
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzsy;

    const/16 v9, 0xe

    if-eqz v8, :cond_2a

    check-cast v14, Lcom/google/android/gms/internal/ads/zzsy;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzsy;->zza:I

    goto/16 :goto_9

    :cond_2a
    instance-of v8, v14, Ljava/lang/OutOfMemoryError;

    if-eqz v8, :cond_2b

    move v8, v9

    goto/16 :goto_7

    :cond_2b
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzqb;

    if-eqz v8, :cond_2c

    check-cast v14, Lcom/google/android/gms/internal/ads/zzqb;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzqb;->zza:I

    const/16 v9, 0x11

    goto/16 :goto_9

    :cond_2c
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzqe;

    if-eqz v8, :cond_2d

    check-cast v14, Lcom/google/android/gms/internal/ads/zzqe;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzqe;->zza:I

    const/16 v9, 0x12

    goto/16 :goto_9

    :cond_2d
    instance-of v8, v14, Landroid/media/MediaCodec$CryptoException;

    if-eqz v8, :cond_2e

    check-cast v14, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v14}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Llfj;->A(I)I

    move-result v9

    goto/16 :goto_9

    :cond_2e
    const/16 v8, 0x16

    goto/16 :goto_7

    :goto_c
    invoke-static {}, Lej6;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v12

    iget-wide v13, v0, Llfj;->f:J

    sub-long v13, v4, v13

    invoke-static {v12, v13, v14}, Lfi6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v12

    invoke-static {v12, v8}, Lhi6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-static {v8, v9}, Lii6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-static {v8, v6}, Lji6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    invoke-static {v6}, Lki6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v6

    iget-object v8, v0, Llfj;->c:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzor;

    invoke-direct {v9, v0, v6}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Llfj;Landroid/media/metrics/PlaybackErrorEvent;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Llfj;->B:Z

    iput-object v11, v0, Llfj;->p:Lcom/google/android/gms/internal/ads/zzba;

    :goto_d
    invoke-virtual {v1, v7}, Lsaj;->d(I)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface/range {p1 .. p1}, Ll1f;->zzp()Lnaf;

    move-result-object v6

    invoke-virtual {v6, v7}, Lnaf;->b(I)Z

    move-result v8

    invoke-virtual {v6, v2}, Lnaf;->b(I)Z

    move-result v9

    invoke-virtual {v6, v10}, Lnaf;->b(I)Z

    move-result v6

    if-nez v8, :cond_2f

    if-nez v9, :cond_2f

    if-eqz v6, :cond_32

    move v6, v2

    :cond_2f
    if-nez v8, :cond_30

    invoke-virtual {v0, v4, v5, v11, v3}, Llfj;->q(JLerj;I)V

    :cond_30
    if-nez v9, :cond_31

    invoke-virtual {v0, v4, v5, v11, v3}, Llfj;->C(JLerj;I)V

    :cond_31
    if-nez v6, :cond_32

    invoke-virtual {v0, v4, v5, v11, v3}, Llfj;->D(JLerj;I)V

    :cond_32
    iget-object v6, v0, Llfj;->q:Ljfj;

    invoke-virtual {v0, v6}, Llfj;->s(Ljfj;)Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v0, Llfj;->q:Ljfj;

    iget-object v6, v6, Ljfj;->a:Lerj;

    iget v8, v6, Lerj;->w:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_33

    invoke-virtual {v0, v4, v5, v6, v3}, Llfj;->q(JLerj;I)V

    iput-object v11, v0, Llfj;->q:Ljfj;

    :cond_33
    iget-object v6, v0, Llfj;->r:Ljfj;

    invoke-virtual {v0, v6}, Llfj;->s(Ljfj;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v0, Llfj;->r:Ljfj;

    iget-object v6, v6, Ljfj;->a:Lerj;

    invoke-virtual {v0, v4, v5, v6, v3}, Llfj;->C(JLerj;I)V

    iput-object v11, v0, Llfj;->r:Ljfj;

    :cond_34
    iget-object v6, v0, Llfj;->s:Ljfj;

    invoke-virtual {v0, v6}, Llfj;->s(Ljfj;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Llfj;->s:Ljfj;

    iget-object v6, v6, Ljfj;->a:Lerj;

    invoke-virtual {v0, v4, v5, v6, v3}, Llfj;->D(JLerj;I)V

    iput-object v11, v0, Llfj;->s:Ljfj;

    :cond_35
    iget-object v6, v0, Llfj;->b:Landroid/content/Context;

    invoke-static {v6}, Lv2h;->b(Landroid/content/Context;)Lv2h;

    move-result-object v6

    invoke-virtual {v6}, Lv2h;->a()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v12, v2

    goto :goto_e

    :pswitch_1
    const/4 v12, 0x7

    goto :goto_e

    :pswitch_2
    const/16 v12, 0x8

    goto :goto_e

    :pswitch_3
    move v12, v10

    goto :goto_e

    :pswitch_4
    const/4 v12, 0x6

    goto :goto_e

    :pswitch_5
    const/4 v12, 0x5

    goto :goto_e

    :pswitch_6
    const/4 v12, 0x4

    goto :goto_e

    :pswitch_7
    move v12, v7

    goto :goto_e

    :pswitch_8
    move/from16 v12, v16

    goto :goto_e

    :pswitch_9
    move v12, v3

    :goto_e
    iget v6, v0, Llfj;->o:I

    if-eq v12, v6, :cond_36

    iput v12, v0, Llfj;->o:I

    invoke-static {}, Lbj6;->a()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    invoke-static {v6, v12}, Lth6;->a(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    iget-wide v8, v0, Llfj;->f:J

    sub-long v8, v4, v8

    invoke-static {v6, v8, v9}, Luh6;->a(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    invoke-static {v6}, Lwh6;->a(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v6

    iget-object v8, v0, Llfj;->c:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {v9, v0, v6}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Llfj;Landroid/media/metrics/NetworkEvent;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_36
    invoke-interface/range {p1 .. p1}, Ll1f;->zzg()I

    move-result v6

    if-eq v6, v7, :cond_37

    iput-boolean v3, v0, Llfj;->w:Z

    :cond_37
    move-object/from16 v6, p1

    check-cast v6, Lmaj;

    invoke-virtual {v6}, Lmaj;->i()Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v6

    const/16 v8, 0xa

    if-nez v6, :cond_38

    iput-boolean v3, v0, Llfj;->x:Z

    goto :goto_f

    :cond_38
    invoke-virtual {v1, v8}, Lsaj;->d(I)Z

    move-result v3

    if-eqz v3, :cond_39

    iput-boolean v2, v0, Llfj;->x:Z

    :cond_39
    :goto_f
    invoke-interface/range {p1 .. p1}, Ll1f;->zzg()I

    move-result v3

    iget-boolean v6, v0, Llfj;->w:Z

    if-eqz v6, :cond_3a

    const/4 v6, 0x5

    goto :goto_10

    :cond_3a
    iget-boolean v6, v0, Llfj;->x:Z

    if-eqz v6, :cond_3b

    const/16 v6, 0xd

    goto :goto_10

    :cond_3b
    const/4 v6, 0x4

    if-ne v3, v6, :cond_3c

    const/16 v6, 0xb

    goto :goto_10

    :cond_3c
    const/16 v9, 0xc

    if-ne v3, v7, :cond_41

    iget v3, v0, Llfj;->n:I

    if-eqz v3, :cond_3d

    if-eq v3, v7, :cond_3d

    if-ne v3, v9, :cond_3e

    :cond_3d
    move v6, v7

    goto :goto_10

    :cond_3e
    invoke-interface/range {p1 .. p1}, Ll1f;->zzv()Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v6, 0x7

    goto :goto_10

    :cond_3f
    invoke-interface/range {p1 .. p1}, Ll1f;->zzh()I

    move-result v3

    if-eqz v3, :cond_40

    move v6, v8

    goto :goto_10

    :cond_40
    const/4 v6, 0x6

    goto :goto_10

    :cond_41
    if-ne v3, v10, :cond_44

    invoke-interface/range {p1 .. p1}, Ll1f;->zzv()Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_10

    :cond_42
    invoke-interface/range {p1 .. p1}, Ll1f;->zzh()I

    move-result v3

    if-eqz v3, :cond_43

    move/from16 v6, v16

    goto :goto_10

    :cond_43
    move v6, v10

    goto :goto_10

    :cond_44
    if-ne v3, v2, :cond_45

    iget v3, v0, Llfj;->n:I

    if-eqz v3, :cond_45

    move v6, v9

    goto :goto_10

    :cond_45
    iget v6, v0, Llfj;->n:I

    :goto_10
    iget v3, v0, Llfj;->n:I

    if-eq v3, v6, :cond_46

    iput v6, v0, Llfj;->n:I

    iput-boolean v2, v0, Llfj;->B:Z

    invoke-static {}, Lfj6;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget v3, v0, Llfj;->n:I

    invoke-static {v2, v3}, Lvi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget-wide v6, v0, Llfj;->f:J

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lwi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    invoke-static {v2}, Lxi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    iget-object v3, v0, Llfj;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzot;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzot;-><init>(Llfj;Landroid/media/metrics/PlaybackStateEvent;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_46
    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Lsaj;->d(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v0, v0, Llfj;->d:Lpfj;

    invoke-virtual {v1, v2}, Lsaj;->c(I)Lraj;

    move-result-object v1

    invoke-interface {v0, v1}, Lpfj;->d(Lraj;)V

    :cond_47
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final j(Lraj;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p1, Lraj;->d:Lbnj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbnj;->b()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Llfj;->k:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Llfj;->B()V

    :cond_1
    iget-object p1, p0, Llfj;->i:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Llfj;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic k(Lraj;Lerj;Lg1j;)V
    .locals 0

    return-void
.end method

.method public final l(Lraj;Lxmj;)V
    .locals 5

    iget-object v0, p1, Lraj;->d:Lbnj;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lxmj;->b:Lerj;

    new-instance v2, Ljfj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Llfj;->d:Lpfj;

    iget-object p1, p1, Lraj;->b:Lw4f;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0}, Lpfj;->e(Lw4f;Lbnj;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, v4, p1}, Ljfj;-><init>(Lerj;ILjava/lang/String;)V

    iget p1, p2, Lxmj;->a:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Llfj;->s:Ljfj;

    return-void

    :cond_2
    iput-object v2, p0, Llfj;->r:Ljfj;

    return-void

    :cond_3
    iput-object v2, p0, Llfj;->q:Ljfj;

    return-void
.end method

.method public final synthetic m(Lraj;Lerj;Lg1j;)V
    .locals 0

    return-void
.end method

.method public final n(Lraj;IJJ)V
    .locals 5

    iget-object p5, p1, Lraj;->d:Lbnj;

    if-eqz p5, :cond_2

    iget-object p6, p0, Llfj;->d:Lpfj;

    iget-object p1, p1, Lraj;->b:Lw4f;

    invoke-interface {p6, p1, p5}, Lpfj;->e(Lw4f;Lbnj;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Llfj;->j:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object p0, p0, Llfj;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez p6, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    int-to-long p2, p2

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final synthetic o(Lraj;I)V
    .locals 0

    return-void
.end method

.method public final p(Lw4f;Lbnj;)V
    .locals 8

    iget-object v0, p0, Llfj;->l:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Llfj;->h:Ly2f;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lw4f;->d(ILy2f;Z)Ly2f;

    iget-object p2, p0, Llfj;->g:Le4f;

    iget v1, v1, Ly2f;->c:I

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, p2, v3, v4}, Lw4f;->e(ILe4f;J)Le4f;

    iget-object p1, p2, Le4f;->c:Lcme;

    iget-object p1, p1, Lcme;->b:Lxge;

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lxge;->a:Landroid/net/Uri;

    invoke-static {p1}, Lkfh;->J(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    :goto_0
    invoke-static {v0, v2}, Lyh6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-wide v4, p2, Le4f;->l:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    iget-boolean p1, p2, Le4f;->j:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Le4f;->h:Z

    if-nez p1, :cond_5

    invoke-virtual {p2}, Le4f;->b()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v4, v5}, Lkfh;->Q(J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lzh6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_5
    invoke-virtual {p2}, Le4f;->b()Z

    move-result p1

    if-eq v3, p1, :cond_6

    move v1, v3

    :cond_6
    invoke-static {v0, v1}, Lai6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v3, p0, Llfj;->B:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final q(JLerj;I)V
    .locals 6

    iget-object p4, p0, Llfj;->t:Lerj;

    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Llfj;->t:Lerj;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Llfj;->t:Lerj;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Llfj;->r(IJLerj;I)V

    return-void
.end method

.method public final r(IJLerj;I)V
    .locals 3

    invoke-static {p1}, Laj6;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Llfj;->f:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lvh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_b

    invoke-static {p1, p3}, Lhj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_0

    move p5, p3

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    invoke-static {p1, p5}, Ljj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Lerj;->n:Ljava/lang/String;

    if-eqz p5, :cond_1

    invoke-static {p1, p5}, Lkj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_1
    iget-object p5, p4, Lerj;->o:Ljava/lang/String;

    if-eqz p5, :cond_2

    invoke-static {p1, p5}, Llh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2
    iget-object p5, p4, Lerj;->k:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-static {p1, p5}, Lmh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget p5, p4, Lerj;->j:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_4

    invoke-static {p1, p5}, Lnh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget p5, p4, Lerj;->v:I

    if-eq p5, v1, :cond_5

    invoke-static {p1, p5}, Loh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget p5, p4, Lerj;->w:I

    if-eq p5, v1, :cond_6

    invoke-static {p1, p5}, Lph6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget p5, p4, Lerj;->E:I

    if-eq p5, v1, :cond_7

    invoke-static {p1, p5}, Lqh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget p5, p4, Lerj;->F:I

    if-eq p5, v1, :cond_8

    invoke-static {p1, p5}, Lgi6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget-object p5, p4, Lerj;->d:Ljava/lang/String;

    if-eqz p5, :cond_a

    sget v2, Lkfh;->a:I

    const-string v2, "-"

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_9

    aget-object p5, p5, p3

    goto :goto_1

    :cond_9
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lri6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_a

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    iget p2, p4, Lerj;->x:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_c

    invoke-static {p1, p2}, Lgj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    :cond_b
    invoke-static {p1, p2}, Lhj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_c
    :goto_2
    iput-boolean p3, p0, Llfj;->B:Z

    invoke-static {p1}, Lij6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    iget-object p2, p0, Llfj;->c:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzop;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzop;-><init>(Llfj;Landroid/media/metrics/TrackChangeEvent;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Ljfj;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Llfj;->d:Lpfj;

    iget-object p1, p1, Ljfj;->c:Ljava/lang/String;

    invoke-interface {p0}, Lpfj;->zze()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t()Landroid/media/metrics/LogSessionId;
    .locals 0

    iget-object p0, p0, Llfj;->e:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0}, Lzi6;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object p0

    return-object p0
.end method
