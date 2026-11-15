.class public final Lahh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lqef;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lg8i;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lqef;ZZLfef;Lg8i;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahh;->a:Lqef;

    iput-boolean p2, p0, Lahh;->b:Z

    iput-boolean p3, p0, Lahh;->c:Z

    iput-object p5, p0, Lahh;->e:Lg8i;

    iput-object p7, p0, Lahh;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput p8, p0, Lahh;->f:I

    iput p9, p0, Lahh;->g:I

    return-void
.end method

.method public static synthetic a(Lahh;Ljava/lang/Exception;)Lbhh;
    .locals 1

    const-string v0, "TrustlessTokenSignal"

    iget-object p0, p0, Lahh;->a:Lqef;

    invoke-virtual {p0, p1, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p0, Lbhh;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbhh;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x32

    return p0
.end method

.method public final zzb()Lim5;
    .locals 6

    sget-object v0, Lcye;->X6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lahh;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lbhh;

    invoke-direct {p0, v1}, Lbhh;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget v0, p0, Lahh;->g:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    sget-object v0, Lcye;->Z6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcye;->a7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lahh;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lahh;->b:Z

    :goto_1
    if-nez v0, :cond_3

    new-instance p0, Lbhh;

    invoke-direct {p0, v1}, Lbhh;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Lygh;

    invoke-direct {v1}, Lygh;-><init>()V

    iget-object v2, p0, Lahh;->e:Lg8i;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    sget-object v1, Ln0f;->b:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lahh;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v0

    new-instance v1, Lzgh;

    invoke-direct {v1, p0}, Lzgh;-><init>(Lahh;)V

    const-class p0, Ljava/lang/Exception;

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lbhh;

    invoke-direct {p0, v1}, Lbhh;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
