.class public final Lyeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final b:Landroid/content/Context;

.field public final c:Lg8i;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lixg;

.field public final f:Lenh;

.field public final g:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;Landroid/content/Context;Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Lixg;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyeh;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p2, p0, Lyeh;->b:Landroid/content/Context;

    iput-object p3, p0, Lyeh;->c:Lg8i;

    iput-object p4, p0, Lyeh;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lyeh;->e:Lixg;

    iput-object p6, p0, Lyeh;->f:Lenh;

    iput-object p7, p0, Lyeh;->g:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method

.method public static synthetic a(Lyeh;Ljava/lang/Throwable;)Lim5;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzetm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzetm;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lyeh;->c:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    instance-of p0, p1, Ljava/lang/SecurityException;

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_0

    new-instance p0, Lafh;

    const/4 p1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/IllegalStateException;

    if-eqz p0, :cond_1

    new-instance p0, Lafh;

    const/4 p1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_2

    new-instance p0, Lafh;

    const/4 p1, 0x4

    invoke-direct {p0, v1, p1, v0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p0, :cond_3

    new-instance p0, Lafh;

    const/4 p1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lafh;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method public final zzb()Lim5;
    .locals 5

    sget-object v0, Lcye;->za:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyeh;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzO()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcye;->Da:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyeh;->f:Lenh;

    sget-object v1, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->DISABLED:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v1

    iget-object v0, v0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    if-eq v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lyeh;->g:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcye;->xa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcye;->ya:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    sget-object v0, Lcye;->va:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcye;->wa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lyeh;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lyeh;->e:Lixg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lixg;->a(Z)Lim5;

    move-result-object v0

    sget-object v1, Lcye;->Ba:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lyeh;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object v0

    new-instance v1, Lweh;

    invoke-direct {v1}, Lweh;-><init>()V

    iget-object v2, p0, Lyeh;->c:Lg8i;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    new-instance v1, Lxeh;

    invoke-direct {v1, p0}, Lxeh;-><init>(Lyeh;)V

    const-class v3, Ljava/lang/Throwable;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    sget-object v1, Lcye;->Ba:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object p0, p0, Lyeh;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    new-instance p0, Lafh;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v2, v0, v1}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
