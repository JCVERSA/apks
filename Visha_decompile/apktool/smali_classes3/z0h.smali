.class public final Lz0h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final a:Llrh;

.field public final b:Lmzf;

.field public final c:Lsth;

.field public final d:Lwth;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Leuf;

.field public final h:Lq0h;

.field public final i:Loxg;

.field public final j:Landroid/content/Context;

.field public final k:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final l:La0h;

.field public final m:Llmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llrh;Lq0h;Lmzf;Lsth;Lwth;Leuf;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Loxg;Lcom/google/android/gms/internal/ads/zzfgn;La0h;Llmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0h;->j:Landroid/content/Context;

    iput-object p2, p0, Lz0h;->a:Llrh;

    iput-object p3, p0, Lz0h;->h:Lq0h;

    iput-object p4, p0, Lz0h;->b:Lmzf;

    iput-object p5, p0, Lz0h;->c:Lsth;

    iput-object p6, p0, Lz0h;->d:Lwth;

    iput-object p7, p0, Lz0h;->g:Leuf;

    iput-object p8, p0, Lz0h;->e:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lz0h;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p10, p0, Lz0h;->i:Loxg;

    iput-object p11, p0, Lz0h;->k:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p12, p0, Lz0h;->l:La0h;

    iput-object p13, p0, Lz0h;->m:Llmg;

    return-void
.end method

.method public static synthetic a(Lz0h;Lhmh;Lvmh;Lkxg;Ljava/lang/Throwable;)Lim5;
    .locals 4

    iget-object p4, p0, Lz0h;->j:Landroid/content/Context;

    const/16 v0, 0xc

    invoke-static {p4, v0}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object p4

    iget-object v0, p1, Lhmh;->E:Ljava/lang/String;

    invoke-interface {p4, v0}, Lwrh;->zzd(Ljava/lang/String;)Lwrh;

    invoke-interface {p4}, Lwrh;->zzi()Lwrh;

    invoke-interface {p3, p2, p1}, Lkxg;->a(Lvmh;Lhmh;)Lim5;

    move-result-object p3

    iget v0, p1, Lhmh;->R:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lz0h;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p3, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p3

    iget-object v0, p0, Lz0h;->c:Lsth;

    iget-object v1, p0, Lz0h;->h:Lq0h;

    invoke-virtual {v1, p2, p1, p3, v0}, Lq0h;->f(Lvmh;Lhmh;Lim5;Lsth;)Lim5;

    iget-object p0, p0, Lz0h;->k:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-static {p3, p0, p4}, Lgsh;->a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    return-object p3
.end method

.method public static b(Lvmh;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcye;->D5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "No fill."

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const-string v0, "No ad config."

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget v2, p0, Lkmh;->f:I

    if-eqz v2, :cond_3

    const/16 v3, 0xc8

    const/16 v4, 0x12c

    if-lt v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    sget-object v2, Lcye;->C5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v0, 0x190

    if-ge v2, v0, :cond_2

    const-string v1, "No location header to follow redirect or too many redirects."

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received error HTTP response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object p0, p0, Lkmh;->j:Ljmh;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljmh;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lim5;
    .locals 11

    check-cast p1, Lvmh;

    sget-object v0, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->d:Lcom/google/android/gms/internal/ads/zzbuy;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz0h;->m:Llmg;

    invoke-virtual {v1}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcye;->r2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz0h;->m:Llmg;

    invoke-virtual {v0}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzs:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-static {p1}, Lz0h;->b(Lvmh;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz0h;->i:Loxg;

    iget-object v2, p1, Lvmh;->b:Lumh;

    iget-object v3, v2, Lumh;->b:Lkmh;

    invoke-virtual {v1, v3}, Loxg;->i(Lkmh;)V

    sget-object v4, Lcye;->t8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    iget v4, v3, Lkmh;->f:I

    if-eqz v4, :cond_3

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_2

    const/16 v6, 0x12c

    if-lt v4, v6, :cond_3

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    iget-object v0, v3, Lkmh;->q:Ljava/lang/String;

    sget-object v4, Lcye;->O3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Lumh;->a:Ljava/util/List;

    invoke-virtual {v1, v0, v4}, Loxg;->h(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lumh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhmh;

    invoke-virtual {v1, v4}, Loxg;->d(Lhmh;)V

    iget-object v7, v4, Lhmh;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lz0h;->g:Leuf;

    iget v10, v4, Lhmh;->b:I

    invoke-interface {v9, v10, v8}, Leuf;->a(ILjava/lang/String;)Lkxg;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8, p1, v4}, Lkxg;->b(Lvmh;Lhmh;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_6
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v9, v9}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v9

    invoke-virtual {v1, v4, v7, v8, v9}, Loxg;->f(Lhmh;JLcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    :cond_7
    :goto_1
    iget-object v0, p0, Lz0h;->b:Lmzf;

    iget-object v1, p0, Lz0h;->d:Lwth;

    iget-object v4, p0, Lz0h;->c:Lsth;

    new-instance v7, Lcqf;

    invoke-direct {v7, p1, v1, v4}, Lcqf;-><init>(Lvmh;Lwth;Lsth;)V

    iget-object v1, p0, Lz0h;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v1}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget v0, v3, Lkmh;->r:I

    if-le v0, v6, :cond_8

    iget-object p0, p0, Lz0h;->l:La0h;

    invoke-virtual {p0, p1}, La0h;->b(Lvmh;)Lim5;

    move-result-object p0

    goto/16 :goto_3

    :cond_8
    invoke-static {p1}, Lz0h;->b(Lvmh;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lz0h;->a:Llrh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzn:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-direct {v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lxqh;->c(Lim5;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object v0

    invoke-virtual {v0}, Lcrh;->a()Lrqh;

    move-result-object v0

    iget-object v4, p0, Lz0h;->h:Lq0h;

    invoke-virtual {v4}, Lq0h;->l()V

    iget-object v2, v2, Lumh;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhmh;

    iget-object v7, v6, Lhmh;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lz0h;->g:Leuf;

    iget v10, v6, Lhmh;->b:I

    invoke-interface {v9, v10, v8}, Leuf;->a(ILjava/lang/String;)Lkxg;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v9, p1, v6}, Lkxg;->b(Lvmh;Lhmh;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v7, Lcom/google/android/gms/internal/ads/zzffn;->zzo:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {v3, v7, v0}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "render-config-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcrh;->h(Ljava/lang/String;)Lcrh;

    move-result-object v0

    new-instance v7, Lu0h;

    invoke-direct {v7, p0, v6, p1, v9}, Lu0h;-><init>(Lz0h;Lhmh;Lvmh;Lkxg;)V

    const-class v6, Ljava/lang/Throwable;

    invoke-virtual {v0, v6, v7}, Lcrh;->c(Ljava/lang/Class;Lk7i;)Lcrh;

    move-result-object v0

    invoke-virtual {v0}, Lcrh;->a()Lrqh;

    move-result-object v0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzega;-><init>(Lq0h;)V

    invoke-interface {v0, p0, v1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    :goto_3
    return-object p0
.end method
