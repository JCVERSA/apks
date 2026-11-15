.class public final Lqfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lqef;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lg8i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkwe;Lqef;Ljava/util/concurrent/ScheduledExecutorService;Lg8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lqfh;->a:Lqef;

    iput-object p4, p0, Lqfh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lqfh;->c:Lg8i;

    return-void
.end method

.method public static synthetic a(Lqfh;Ljava/lang/Exception;)Lrfh;
    .locals 1

    const-string v0, "AppSetIdInfoGmscoreSignal"

    iget-object p0, p0, Lqfh;->a:Lqef;

    invoke-virtual {p0, p1, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p0, Lrfh;

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lrfh;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x2b

    return p0
.end method

.method public final zzb()Lim5;
    .locals 6

    sget-object v0, Lcye;->e3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcye;->j3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/tasks/a;->e(Ljava/lang/Object;)Lxda;

    move-result-object v0

    invoke-static {v0, v1}, Lc0i;->a(Lxda;Lir0;)Lim5;

    move-result-object v0

    new-instance v1, Lofh;

    invoke-direct {v1}, Lofh;-><init>()V

    iget-object v2, p0, Lqfh;->c:Lg8i;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    sget-object v1, Lhze;->a:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lhze;->b:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lqfh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v0

    :cond_0
    new-instance v1, Lpfh;

    invoke-direct {v1, p0}, Lpfh;-><init>(Lqfh;)V

    const-class p0, Ljava/lang/Exception;

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lrfh;

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lrfh;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
