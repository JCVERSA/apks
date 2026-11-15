.class public final Lwpf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final c:Lgxg;

.field public final d:Lyjg;

.field public final e:Lg8i;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public h:Lwaf;

.field public i:Lwaf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzg;Lgxg;Lyjg;Lg8i;Lg8i;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwpf;->a:Landroid/content/Context;

    iput-object p2, p0, Lwpf;->b:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p3, p0, Lwpf;->c:Lgxg;

    iput-object p4, p0, Lwpf;->d:Lyjg;

    iput-object p5, p0, Lwpf;->e:Lg8i;

    iput-object p6, p0, Lwpf;->f:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lwpf;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static bridge synthetic a(Lwpf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lwpf;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lwpf;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/Integer;)Lim5;
    .locals 2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    sget-object v0, Lcye;->qa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v0, Lcye;->pa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "12"

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v0, Lcye;->ra:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcye;->sa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object p2, p0, Lwpf;->c:Lgxg;

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lgxg;->b(Landroid/net/Uri;Landroid/view/InputEvent;)Lim5;

    move-result-object p2

    invoke-static {p2}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p2

    new-instance p3, Lupf;

    invoke-direct {p3, p1}, Lupf;-><init>(Landroid/net/Uri$Builder;)V

    iget-object p0, p0, Lwpf;->f:Ljava/util/concurrent/Executor;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    goto :goto_0

    :cond_1
    sget-object p0, Lcye;->pa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p2, "10"

    invoke-virtual {p1, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic c(Lwpf;Ljava/lang/String;Ljava/lang/Throwable;)Lim5;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclq;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzclq;-><init>(Lwpf;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lwpf;->e:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lwpf;Landroid/net/Uri$Builder;Ljava/lang/Throwable;)Lim5;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclp;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Lwpf;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lwpf;->e:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    sget-object p0, Lcye;->pa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p2, "9"

    invoke-virtual {p1, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Lwpf;)Lg8i;
    .locals 0

    iget-object p0, p0, Lwpf;->e:Lg8i;

    return-object p0
.end method

.method public static synthetic g(Lwpf;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcye;->ua:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwpf;->a:Landroid/content/Context;

    invoke-static {v0}, Luaf;->e(Landroid/content/Context;)Lwaf;

    move-result-object v0

    iput-object v0, p0, Lwpf;->i:Lwaf;

    const-string p0, "AttributionReporting.getUpdatedUrlAndRegisterSource"

    invoke-interface {v0, p1, p0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lwpf;->a:Landroid/content/Context;

    invoke-static {v0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object v0

    iput-object v0, p0, Lwpf;->h:Lwaf;

    const-string p0, "AttributionReportingSampled.getUpdatedUrlAndRegisterSource"

    invoke-interface {v0, p1, p0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lwpf;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcye;->ua:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwpf;->a:Landroid/content/Context;

    invoke-static {v0}, Luaf;->e(Landroid/content/Context;)Lwaf;

    move-result-object v0

    iput-object v0, p0, Lwpf;->i:Lwaf;

    const-string p0, "AttributionReporting"

    invoke-interface {v0, p1, p0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lwpf;->a:Landroid/content/Context;

    invoke-static {v0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object v0

    iput-object v0, p0, Lwpf;->h:Lwaf;

    const-string p0, "AttributionReportingSampled"

    invoke-interface {v0, p1, p0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcye;->na:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/util/Random;)Lim5;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lwpf;->d:Lyjg;

    invoke-virtual {v0}, Lyjg;->a()Landroid/view/InputEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lwpf;->k(Ljava/lang/String;Landroid/view/InputEvent;Ljava/util/Random;)Lim5;

    move-result-object p2

    new-instance v0, Lrpf;

    invoke-direct {v0, p0, p1}, Lrpf;-><init>(Lwpf;Ljava/lang/String;)V

    iget-object p0, p0, Lwpf;->e:Lg8i;

    const-class p1, Ljava/lang/Throwable;

    invoke-static {p2, p1, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/String;Lwth;Ljava/util/Random;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwpf;->d:Lyjg;

    invoke-virtual {v0}, Lyjg;->a()Landroid/view/InputEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lwpf;->k(Ljava/lang/String;Landroid/view/InputEvent;Ljava/util/Random;)Lim5;

    move-result-object p3

    sget-object v0, Lcye;->ta:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lwpf;->g:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p3, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p3

    new-instance v0, Lvpf;

    invoke-direct {v0, p0, p2, p1, p4}, Lvpf;-><init>(Lwpf;Lwth;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p0, p0, Lwpf;->e:Lg8i;

    invoke-static {p3, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Landroid/view/InputEvent;Ljava/util/Random;)Lim5;
    .locals 4

    :try_start_0
    sget-object v0, Lcye;->na:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwpf;->b:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    int-to-long v1, p3

    sget-object p3, Lcye;->oa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-nez p2, :cond_0

    sget-object p0, Lcye;->pa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p1

    invoke-virtual {p1, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "11"

    invoke-virtual {v0, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lwpf;->c:Lgxg;

    invoke-virtual {p3}, Lgxg;->a()Lim5;

    move-result-object p3

    invoke-static {p3}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p3

    new-instance v1, Lspf;

    invoke-direct {v1, p0, v0, p1, p2}, Lspf;-><init>(Lwpf;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;)V

    iget-object p1, p0, Lwpf;->f:Ljava/util/concurrent/Executor;

    invoke-static {p3, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    check-cast p1, Lq7i;

    const-class p2, Ljava/lang/Throwable;

    new-instance p3, Ltpf;

    invoke-direct {p3, p0, v0}, Ltpf;-><init>(Lwpf;Landroid/net/Uri$Builder;)V

    iget-object p0, p0, Lwpf;->e:Lg8i;

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
