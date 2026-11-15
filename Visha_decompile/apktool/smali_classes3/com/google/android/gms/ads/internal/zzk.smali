.class public final Lcom/google/android/gms/ads/internal/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lare;


# static fields
.field private static final zzc:J


# instance fields
.field protected zza:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Ljava/util/concurrent/CountDownLatch;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lrwh;

.field private zzk:Landroid/content/Context;

.field private final zzl:Landroid/content/Context;

.field private zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzo:Z

.field private zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/ads/internal/zzk;->zzc:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzl:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzi:Ljava/util/concurrent/Executor;

    sget-object v0, Lcye;->E2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzo:Z

    invoke-static {p1, p2, v0}, Lrwh;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lrwh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lrwh;

    sget-object p1, Lcye;->B2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzg:Z

    sget-object p1, Lcye;->F2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzh:Z

    sget-object p1, Lcye;->D2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    :goto_0
    sget-object p1, Lcye;->H3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zza:Z

    :cond_1
    sget-object p1, Lcye;->B3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lzef;->a:Lg8i;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzv()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lzef;->a:Lg8i;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->run()V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/ads/internal/zzk;)Lrwh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lrwh;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/ads/internal/zzk;Z)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzl:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzo:Z

    invoke-static {v2, v3, p1, v4}, Lcom/google/android/gms/ads/internal/zzk;->zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZ)Lcom/google/android/gms/internal/ads/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c0;->g()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 v0, 0x7eb

    invoke-virtual {p0, v0, v2, v3, p1}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;

    return-void
.end method

.method private final zzq()Lare;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzm()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lare;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lare;

    return-object p0
.end method

.method private final zzr()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    aget-object v2, v2, v4

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {p0, v2}, Lare;->zzk(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v3, v4, v2}, Lare;->zzl(III)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzs(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->b0()Lyne;

    move-result-object v2

    invoke-virtual {v2, p1}, Lyne;->v(Z)Lyne;

    invoke-virtual {v2, v0}, Lyne;->w(Ljava/lang/String;)Lyne;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e;

    sget v0, Lere;->I:I

    new-instance v0, Lcre;

    invoke-direct {v0, p1}, Lcre;-><init>(Lcom/google/android/gms/internal/ads/e;)V

    invoke-static {v1, v0}, Lere;->o(Landroid/content/Context;Lcre;)Lere;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static final zzt(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static final zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZ)Lcom/google/android/gms/internal/ads/c0;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->b0()Lyne;

    move-result-object v0

    invoke-virtual {v0, p2}, Lyne;->v(Z)Lyne;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lyne;->w(Ljava/lang/String;)Lyne;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/c0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/e;Z)Lcom/google/android/gms/internal/ads/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcye;->H3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzi()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zza:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    sget-object v2, Lcye;->j1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzm()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzk;->zzs(Z)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzi:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Lcom/google/android/gms/ads/internal/zzk;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v7, p0, Lcom/google/android/gms/ads/internal/zzk;->zzo:Z

    invoke-static {v5, v6, v3, v7}, Lcom/google/android/gms/ads/internal/zzk;->zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZ)Lcom/google/android/gms/internal/ads/c0;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-boolean v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzh:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/c0;->i()Z

    move-result v5

    if-nez v5, :cond_3

    iput v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzk;->zzs(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    iput v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzk;->zzs(Z)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const/16 v1, 0x7ef

    invoke-virtual {v3, v1, v6, v7, v5}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    throw v1
.end method

.method public final zzb(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzj()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzr()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {p2, p0}, Lare;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzk;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object v0

    sget-object v1, Lcye;->Ma:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzr()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p2, p3, p4}, Lare;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/zzh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzh;-><init>(Lcom/google/android/gms/ads/internal/zzk;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzi:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/j8;->j(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcye;->V2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    sget-wide v0, Lcom/google/android/gms/ads/internal/zzk;->zzc:J

    const/4 v2, 0x1

    invoke-static {p1, p0, v0, v1, v2}, Lxqe;->a(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    const/16 p0, 0x11

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcye;->La:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p0

    sget-object v0, Lcye;->Ma:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3}, Lare;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p0

    sget-object v0, Lcye;->Ma:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3}, Lare;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public final zzi()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    new-instance v1, Lg4j;

    invoke-direct {v1, p0}, Lg4j;-><init>(Lcom/google/android/gms/ads/internal/zzk;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lrwh;

    new-instance v3, Lfyh;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    invoke-static {v0, v2}, Lqxh;->b(Landroid/content/Context;Lrwh;)I

    move-result v0

    sget-object v2, Lcye;->C2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v3, p0, v0, v1, v2}, Lfyh;-><init>(Landroid/content/Context;ILrxh;Z)V

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lfyh;->d(I)Z

    move-result p0

    return p0
.end method

.method public final zzj()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Interrupted during GADSignals creation."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzr()V

    invoke-interface {v0, p1}, Lare;->zzk(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl(III)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzr()V

    invoke-interface {v0, p1, p2, p3}, Lare;->zzl(III)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzm()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzg:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zza:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    return p0
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 4

    sget-object v0, Lcye;->b3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lare;->zzn([Ljava/lang/StackTraceElement;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lare;->zzn([Ljava/lang/StackTraceElement;)V

    :cond_1
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()Lare;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lare;->zzo(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzp()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    return p0
.end method
