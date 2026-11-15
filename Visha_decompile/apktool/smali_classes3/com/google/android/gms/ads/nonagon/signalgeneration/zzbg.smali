.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->a:Lqyi;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->b:Lqyi;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->c:Lqyi;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->d:Lqyi;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->e:Lqyi;

    iput-object p6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->f:Lqyi;

    iput-object p7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->g:Lqyi;

    iput-object p8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->h:Lqyi;

    iput-object p9, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llrh;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->c:Lqyi;

    check-cast v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbi;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->d:Lqyi;

    check-cast v3, Lmyf;

    invoke-virtual {v3}, Lmyf;->a()Llyf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->e:Lqyi;

    invoke-interface {v4}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li9g;

    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->f:Lqyi;

    invoke-interface {v5}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->g:Lqyi;

    invoke-interface {v6}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbym;

    iget-object v7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->h:Lqyi;

    invoke-interface {v7}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbg;->i:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    iget-object p0, p0, Lenh;->s:Landroid/os/Bundle;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdqm;->zzc:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v8

    invoke-interface {v8}, Lfy0;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, v6, v0, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza(Lcom/google/android/gms/internal/ads/zzbym;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Landroid/os/Bundle;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;

    move-result-object v9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzd:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v5

    invoke-interface {v5}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {v4, v9}, Li9g;->F(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffn;->zzw:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {v3}, Llyf;->c()Lim5;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p0

    sget-object v0, Lcye;->F5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcrh;->i(JLjava/util/concurrent/TimeUnit;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    new-instance v0, Ldse;

    invoke-direct {v0, v4}, Ldse;-><init>(Li9g;)V

    sget-object v1, Lzef;->a:Lg8i;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    :goto_1
    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
