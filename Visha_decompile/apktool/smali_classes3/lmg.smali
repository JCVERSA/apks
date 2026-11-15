.class public final Llmg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ltef;

.field public final c:Lenh;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/google/android/gms/ads/internal/zzk;

.field public final g:Landroid/os/Bundle;

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxmg;Ltef;Lenh;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Llmg;->g:Landroid/os/Bundle;

    invoke-virtual {p2}, Lzmg;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iput-object p2, p0, Llmg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Llmg;->b:Ltef;

    iput-object p4, p0, Llmg;->c:Lenh;

    iput-object p5, p0, Llmg;->d:Ljava/lang/String;

    iput-object p6, p0, Llmg;->e:Ljava/lang/String;

    iput-object p7, p0, Llmg;->f:Lcom/google/android/gms/ads/internal/zzk;

    iput-object p1, p0, Llmg;->h:Landroid/content/Context;

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p6, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p6, "ad_format"

    invoke-virtual {p2, p6, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcye;->F9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p6

    invoke-virtual {p6, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string p6, "1"

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p7}, Lcom/google/android/gms/ads/internal/zzk;->zzp()I

    move-result p3

    add-int/lit8 p7, p3, -0x1

    if-eqz p3, :cond_2

    if-eqz p7, :cond_1

    if-eq p7, v0, :cond_0

    const-string p3, "na"

    goto :goto_0

    :cond_0
    const-string p3, "2"

    goto :goto_0

    :cond_1
    move-object p3, p6

    :goto_0
    const-string p7, "asv"

    invoke-virtual {p2, p7, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    sget-object p3, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p7

    invoke-virtual {p7, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p7

    const-string v1, "rt_f"

    invoke-virtual {p0, v1, p7}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p7

    const-string v1, "rt_m"

    invoke-virtual {p0, v1, p7}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p7, "rt_t"

    invoke-virtual {p0, p7, p3}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p3

    invoke-virtual {p3}, Lqef;->c()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p7, "wv_c"

    invoke-virtual {p0, p7, p3}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcye;->v2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p7

    invoke-virtual {p7, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzc(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v1, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p7, "mem_avl"

    invoke-virtual {p0, p7, p3}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p7, "mem_tt"

    invoke-virtual {p0, p7, p3}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eq v0, p1, :cond_4

    const-string p6, "0"

    :cond_4
    const-string p1, "low_m"

    invoke-virtual {p0, p1, p6}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object p1, Lcye;->T6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-static {p4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzg(Lenh;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const-string p3, "scar"

    const-string p6, "request_id"

    if-eqz p1, :cond_a

    const-string p7, "se"

    if-eq p1, v0, :cond_9

    const/4 p5, 0x2

    if-eq p1, p5, :cond_8

    const/4 p5, 0x3

    if-eq p1, p5, :cond_7

    const-string p1, "r_both"

    invoke-virtual {p2, p7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string p1, "r_adstring"

    invoke-virtual {p2, p7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    const-string p1, "r_adinfo"

    invoke-virtual {p2, p7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    invoke-virtual {p2, p6, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "query_g"

    invoke-virtual {p2, p7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string p1, "true"

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p4, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    const-string p2, "ragent"

    invoke-virtual {p0, p2, p1}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p4, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rtype"

    invoke-virtual {p0, p2, p1}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p2, p6, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "false"

    invoke-virtual {p2, p3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Llmg;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Llmg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcye;->od:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llmg;->c:Lenh;

    iget-boolean v0, v0, Lenh;->p:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    const-string v1, "brr"

    invoke-virtual {p0, v1, v0}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Llmg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final e(Lvmh;)V
    .locals 3

    iget-object p1, p1, Lvmh;->b:Lumh;

    iget-object v0, p1, Lumh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmh;

    iget v0, v0, Lhmh;->b:I

    invoke-static {v0}, Lhmh;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_format"

    invoke-virtual {p0, v2, v1}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Llmg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Llmg;->b:Ltef;

    invoke-virtual {v1}, Ltef;->l()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "as"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p1, Lumh;->b:Lkmh;

    const-string v0, "gqi"

    iget-object p1, p1, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cnt"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_coarse"

    invoke-virtual {p0, v1, v0}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "gnt"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {p0, v0, p1}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
