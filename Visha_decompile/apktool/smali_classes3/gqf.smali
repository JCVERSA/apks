.class public final Lgqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkzf;
.implements Lb1g;
.implements Ld0g;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lzzf;
.implements Lh8g;
.implements Lv7g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lvmh;

.field public final g:Lhmh;

.field public final h:Lsth;

.field public final i:Lsnh;

.field public final j:Lfre;

.field public final k:Lbze;

.field public final l:Ljava/lang/ref/WeakReference;

.field public final m:Ljava/lang/ref/WeakReference;

.field public final n:Liyf;

.field public final o:La2g;

.field public p:Z

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lvmh;Lhmh;Lsth;Lsnh;Landroid/view/View;Lejf;Lfre;Lbze;Ldze;Lcom/google/android/gms/internal/ads/zzfgn;Liyf;La2g;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lgqf;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p1

    iput-object v1, v0, Lgqf;->b:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lgqf;->c:Ljava/util/concurrent/Executor;

    move-object v1, p3

    iput-object v1, v0, Lgqf;->d:Ljava/util/concurrent/Executor;

    move-object v1, p4

    iput-object v1, v0, Lgqf;->e:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p5

    iput-object v1, v0, Lgqf;->f:Lvmh;

    move-object v1, p6

    iput-object v1, v0, Lgqf;->g:Lhmh;

    move-object v1, p7

    iput-object v1, v0, Lgqf;->h:Lsth;

    move-object v1, p8

    iput-object v1, v0, Lgqf;->i:Lsnh;

    move-object v1, p11

    iput-object v1, v0, Lgqf;->j:Lfre;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p9

    invoke-direct {v1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lgqf;->l:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p10

    invoke-direct {v1, p10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lgqf;->m:Ljava/lang/ref/WeakReference;

    move-object v1, p12

    iput-object v1, v0, Lgqf;->k:Lbze;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgqf;->n:Liyf;

    move-object/from16 v1, p16

    iput-object v1, v0, Lgqf;->o:La2g;

    return-void
.end method

.method public static bridge synthetic b(Lgqf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lgqf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic g(Lgqf;)La2g;
    .locals 0

    iget-object p0, p0, Lgqf;->o:La2g;

    return-object p0
.end method

.method public static bridge synthetic k(Lgqf;)Lhmh;
    .locals 0

    iget-object p0, p0, Lgqf;->g:Lhmh;

    return-object p0
.end method

.method public static bridge synthetic n(Lgqf;)Lvmh;
    .locals 0

    iget-object p0, p0, Lgqf;->f:Lvmh;

    return-object p0
.end method

.method public static bridge synthetic o(Lgqf;)Lsnh;
    .locals 0

    iget-object p0, p0, Lgqf;->i:Lsnh;

    return-object p0
.end method

.method public static bridge synthetic p(Lgqf;)Lsth;
    .locals 0

    iget-object p0, p0, Lgqf;->h:Lsth;

    return-object p0
.end method

.method public static bridge synthetic q(Lgqf;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lgqf;->y()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lgqf;II)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, p2}, Lgqf;->A(II)V

    return-void
.end method

.method public static synthetic t(Lgqf;)V
    .locals 0

    invoke-direct {p0}, Lgqf;->z()V

    return-void
.end method

.method public static synthetic u(Lgqf;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcme;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcme;-><init>(Lgqf;)V

    iget-object p0, p0, Lgqf;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic w(Lgqf;II)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcmg;-><init>(Lgqf;II)V

    iget-object p0, p0, Lgqf;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final z()V
    .locals 8

    iget-object v2, p0, Lgqf;->g:Lhmh;

    iget-object v0, v2, Lhmh;->d:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcye;->L3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgqf;->j:Lfre;

    iget-object v3, p0, Lgqf;->b:Landroid/content/Context;

    iget-object v4, p0, Lgqf;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v0, v3, v4, v1}, Lare;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    sget-object v0, Lcye;->F0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgqf;->f:Lvmh;

    iget-object v0, v0, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->b:Lkmh;

    iget-boolean v0, v0, Lkmh;->h:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lyze;->h:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v7, p0, Lgqf;->i:Lsnh;

    iget-object v0, p0, Lgqf;->h:Lsth;

    iget-object v1, p0, Lgqf;->f:Lvmh;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lgqf;->y()Ljava/util/List;

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lsth;->e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lgqf;->o:La2g;

    invoke-virtual {v7, v0, p0}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void

    :cond_4
    sget-object v0, Lyze;->g:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v2, Lhmh;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lgqf;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejf;

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    invoke-static {v0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object v0

    sget-object v1, Lcye;->i1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lgqf;->e:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v5, v3}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    new-instance v1, Lfqf;

    invoke-direct {v1, p0, v4}, Lfqf;-><init>(Lgqf;Ljava/lang/String;)V

    iget-object p0, p0, Lgqf;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 2

    if-lez p1, :cond_2

    iget-object v0, p0, Lgqf;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lgqf;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcmf;-><init>(Lgqf;II)V

    int-to-long p0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_2
    :goto_1
    invoke-direct {p0}, Lgqf;->z()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lgqf;->h:Lsth;

    iget-object p3, p0, Lgqf;->i:Lsnh;

    iget-object p0, p0, Lgqf;->g:Lhmh;

    iget-object v0, p0, Lhmh;->h:Ljava/util/List;

    invoke-virtual {p2, p0, v0, p1}, Lsth;->f(Lhmh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbvk;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void
.end method

.method public final h(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 6

    sget-object v0, Lcye;->H1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    iget-object v0, p0, Lgqf;->g:Lhmh;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lhmh;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@gw_mpe@"

    invoke-static {v3, v5, v4}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgqf;->i:Lsnh;

    iget-object v2, p0, Lgqf;->h:Lsth;

    iget-object p0, p0, Lgqf;->f:Lvmh;

    invoke-virtual {v2, p0, v0, v1}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    :cond_1
    return-void
.end method

.method public final onAdClicked()V
    .locals 5

    sget-object v0, Lcye;->F0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgqf;->f:Lvmh;

    iget-object v0, v0, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->b:Lkmh;

    iget-boolean v0, v0, Lkmh;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lyze;->d:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgqf;->k:Lbze;

    invoke-virtual {v0}, Lbze;->a()Lim5;

    move-result-object v0

    invoke-static {v0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object v0

    new-instance v1, Ldqf;

    invoke-direct {v1}, Ldqf;-><init>()V

    sget-object v2, Lzef;->g:Lg8i;

    const-class v3, Ljava/lang/Throwable;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    new-instance v1, Leqf;

    invoke-direct {v1, p0}, Leqf;-><init>(Lgqf;)V

    iget-object p0, p0, Lgqf;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lgqf;->i:Lsnh;

    iget-object v1, p0, Lgqf;->h:Lsth;

    iget-object v2, p0, Lgqf;->f:Lvmh;

    iget-object v3, p0, Lgqf;->g:Lhmh;

    iget-object p0, p0, Lgqf;->b:Landroid/content/Context;

    iget-object v4, v3, Lhmh;->c:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqef;->a(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lsnh;->c(Ljava/util/List;I)V

    return-void
.end method

.method public final y()Ljava/util/List;
    .locals 5

    sget-object v0, Lcye;->yb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lgqf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzC(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lgqf;->g:Lhmh;

    iget-object p0, p0, Lhmh;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dspct"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    iget-object p0, p0, Lgqf;->g:Lhmh;

    iget-object p0, p0, Lhmh;->d:Ljava/util/List;

    return-object p0
.end method

.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 4

    iget-object v0, p0, Lgqf;->h:Lsth;

    iget-object v1, p0, Lgqf;->f:Lvmh;

    iget-object v2, p0, Lgqf;->i:Lsnh;

    iget-object p0, p0, Lgqf;->g:Lhmh;

    iget-object v3, p0, Lhmh;->i:Ljava/util/List;

    invoke-virtual {v0, v1, p0, v3}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void
.end method

.method public final zzf()V
    .locals 4

    iget-object v0, p0, Lgqf;->h:Lsth;

    iget-object v1, p0, Lgqf;->f:Lvmh;

    iget-object v2, p0, Lgqf;->i:Lsnh;

    iget-object p0, p0, Lgqf;->g:Lhmh;

    iget-object v3, p0, Lhmh;->g:Ljava/util/List;

    invoke-virtual {v0, v1, p0, v3}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void
.end method

.method public final zzs()V
    .locals 3

    iget-object v0, p0, Lgqf;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcye;->U3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v1, Lcye;->V3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgqf;->A(II)V

    return-void

    :cond_1
    sget-object v0, Lcye;->T3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgqf;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcmc;-><init>(Lgqf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lgqf;->z()V

    return-void
.end method

.method public final declared-synchronized zzt()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgqf;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lgqf;->y()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lgqf;->g:Lhmh;

    iget-object v0, v4, Lhmh;->f:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lgqf;->i:Lsnh;

    iget-object v2, p0, Lgqf;->h:Lsth;

    iget-object v3, p0, Lgqf;->f:Lvmh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v8}, Lsth;->e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lsnh;->a(Ljava/util/List;La2g;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lgqf;->i:Lsnh;

    iget-object v2, p0, Lgqf;->h:Lsth;

    iget-object v3, p0, Lgqf;->f:Lvmh;

    iget-object v4, p0, Lgqf;->g:Lhmh;

    iget-object v5, v4, Lhmh;->m:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lsnh;->a(Ljava/util/List;La2g;)V

    sget-object v5, Lcye;->Q3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lgqf;->n:Liyf;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Liyf;->b()Lhmh;

    move-result-object v6

    iget-object v6, v6, Lhmh;->m:Ljava/util/List;

    invoke-virtual {v5}, Liyf;->a()Lq0h;

    move-result-object v7

    invoke-virtual {v7}, Lq0h;->g()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "@gw_adnetstatus@"

    invoke-static {v9, v10, v7}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Liyf;->a()Lq0h;

    move-result-object v6

    invoke-virtual {v6}, Lq0h;->a()J

    move-result-wide v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, 0xa

    invoke-static {v6, v7, v11}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v11

    const-string v12, "@gw_ttr@"

    invoke-static {v10, v12, v11}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Liyf;->c()Lvmh;

    move-result-object v6

    invoke-virtual {v5}, Liyf;->b()Lhmh;

    move-result-object v5

    invoke-virtual {v2, v6, v5, v9}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lsnh;->a(Ljava/util/List;La2g;)V

    :cond_3
    iget-object v5, v4, Lhmh;->f:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lsnh;->a(Ljava/util/List;La2g;)V

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgqf;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzu()V
    .locals 4

    iget-object v0, p0, Lgqf;->g:Lhmh;

    iget v1, v0, Lhmh;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgqf;->i:Lsnh;

    iget-object v2, p0, Lgqf;->h:Lsth;

    iget-object p0, p0, Lgqf;->f:Lvmh;

    iget-object v3, v0, Lhmh;->A0:Ljava/util/List;

    invoke-virtual {v2, p0, v0, v3}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    :cond_0
    return-void
.end method

.method public final zzv()V
    .locals 0

    return-void
.end method

.method public final zzw()V
    .locals 4

    iget-object v0, p0, Lgqf;->h:Lsth;

    iget-object v1, p0, Lgqf;->f:Lvmh;

    iget-object v2, p0, Lgqf;->i:Lsnh;

    iget-object p0, p0, Lgqf;->g:Lhmh;

    iget-object v3, p0, Lhmh;->u0:Ljava/util/List;

    invoke-virtual {v0, v1, p0, v3}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void
.end method
