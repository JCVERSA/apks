.class public final Li7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lqef;

.field public b:Lye;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lg8i;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqef;Ljava/util/concurrent/ScheduledExecutorService;Lg8i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcye;->i3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->a(Landroid/content/Context;)Lye;

    move-result-object v0

    iput-object v0, p0, Li7h;->b:Lye;

    :cond_0
    iput-object p1, p0, Li7h;->e:Landroid/content/Context;

    iput-object p2, p0, Li7h;->a:Lqef;

    iput-object p3, p0, Li7h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Li7h;->d:Lg8i;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public final zzb()Lim5;
    .locals 5

    sget-object v0, Lcye;->e3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcye;->j3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcye;->f3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Li7h;->b:Lye;

    invoke-interface {p0}, Lye;->a()Lxda;

    move-result-object p0

    invoke-static {p0, v2}, Lc0i;->a(Lxda;Lir0;)Lim5;

    move-result-object p0

    new-instance v0, Lf7h;

    invoke-direct {v0}, Lf7h;-><init>()V

    sget-object v1, Lzef;->g:Lg8i;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Lcye;->i3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li7h;->e:Landroid/content/Context;

    invoke-static {v0}, Ljoh;->a(Landroid/content/Context;)Lxda;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li7h;->b:Lye;

    invoke-interface {v0}, Lye;->a()Lxda;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    new-instance p0, Lj7h;

    invoke-direct {p0, v2, v1}, Lj7h;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lc0i;->a(Lxda;Lir0;)Lim5;

    move-result-object v0

    new-instance v1, Lg7h;

    invoke-direct {v1}, Lg7h;-><init>()V

    sget-object v2, Lzef;->g:Lg8i;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    sget-object v1, Lcye;->g3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcye;->h3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Li7h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v0

    :cond_3
    new-instance v1, Lh7h;

    invoke-direct {v1, p0}, Lh7h;-><init>(Li7h;)V

    iget-object p0, p0, Li7h;->d:Lg8i;

    const-class v2, Ljava/lang/Exception;

    invoke-static {v0, v2, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Lj7h;

    invoke-direct {p0, v2, v1}, Lj7h;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
