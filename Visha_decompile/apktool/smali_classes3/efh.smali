.class public final Lefh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Lcom/google/android/gms/internal/ads/w3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/w3;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefh;->g:Lcom/google/android/gms/internal/ads/w3;

    iput-object p2, p0, Lefh;->a:Landroid/content/Context;

    iput-object p3, p0, Lefh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lefh;->c:Ljava/util/concurrent/Executor;

    iput p5, p0, Lefh;->d:I

    iput-boolean p6, p0, Lefh;->e:Z

    iput-boolean p7, p0, Lefh;->f:Z

    return-void
.end method

.method public static synthetic a(Lefh;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lffh;
    .locals 7

    new-instance v0, Ltzh;

    invoke-direct {v0}, Ltzh;-><init>()V

    iget-boolean v1, p0, Lefh;->e:Z

    if-nez v1, :cond_0

    sget-object v1, Lcye;->q3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v1, Lcye;->r3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lefh;->a:Landroid/content/Context;

    invoke-static {v0}, Lxzh;->k(Landroid/content/Context;)Lxzh;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcye;->w3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v6, p0, Lefh;->f:Z

    invoke-virtual/range {v1 .. v6}, Lxzh;->j(Ljava/lang/String;Ljava/lang/String;JZ)Ltzh;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AdIdInfoSignalSource.getPaidV1"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Ltzh;

    invoke-direct {v0}, Ltzh;-><init>()V

    :goto_0
    new-instance p0, Lffh;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lffh;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Ltzh;)V

    return-object p0
.end method

.method public static synthetic b(Lefh;Ljava/lang/Throwable;)Lffh;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget-object p0, p0, Lefh;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Lffh;

    new-instance v1, Ltzh;

    invoke-direct {v1}, Ltzh;-><init>()V

    invoke-direct {v0, p1, p0, v1}, Lffh;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Ltzh;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public final zzb()Lim5;
    .locals 6

    iget-object v0, p0, Lefh;->g:Lcom/google/android/gms/internal/ads/w3;

    iget-object v1, p0, Lefh;->a:Landroid/content/Context;

    iget v2, p0, Lefh;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/w3;->a(Landroid/content/Context;I)Lim5;

    move-result-object v0

    invoke-static {v0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object v0

    new-instance v1, Lcfh;

    invoke-direct {v1, p0}, Lcfh;-><init>(Lefh;)V

    iget-object v2, p0, Lefh;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    sget-object v1, Lcye;->i1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lefh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v3, v4, v1, v5}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    new-instance v1, Ldfh;

    invoke-direct {v1, p0}, Ldfh;-><init>(Lefh;)V

    const-class p0, Ljava/lang/Throwable;

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-object p0
.end method
