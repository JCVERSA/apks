.class public final Lrme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lim5;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbym;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbyf;

.field public final synthetic d:Lwrh;

.field public final synthetic e:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lim5;Lcom/google/android/gms/internal/ads/zzbym;Lcom/google/android/gms/internal/ads/zzbyf;Lwrh;)V
    .locals 0

    iput-object p2, p0, Lrme;->a:Lim5;

    iput-object p3, p0, Lrme;->b:Lcom/google/android/gms/internal/ads/zzbym;

    iput-object p4, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    iput-object p5, p0, Lrme;->d:Lwrh;

    iput-object p1, p0, Lrme;->e:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcye;->M7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "SignalGeneratorImpl.generateSignals"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lrme;->a:Lim5;

    iget-object v2, p0, Lrme;->b:Lcom/google/android/gms/internal/ads/zzbym;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzs(Lim5;Lcom/google/android/gms/internal/ads/zzbym;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v1

    sget-object v2, Lsze;->e:Leze;

    invoke-virtual {v2}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lrme;->d:Lwrh;

    invoke-interface {v2, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_1
    iget-object p0, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    if-nez p0, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string p1, "Unknown format is no longer supported."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyf;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 10

    const-string v0, "QueryInfo generation has been disabled."

    iget-object v1, p0, Lrme;->a:Lim5;

    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;

    iget-object v2, p0, Lrme;->b:Lcom/google/android/gms/internal/ads/zzbym;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzs(Lim5;Lcom/google/android/gms/internal/ads/zzbym;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v1

    iget-object v2, p0, Lrme;->e:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzE(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcye;->G7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :try_start_0
    iget-object p1, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyf;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p1, Lsze;->e:Leze;

    invoke-virtual {p1}, Leze;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    iget-object p0, p0, Lrme;->d:Lwrh;

    invoke-interface {p0, v0}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    invoke-interface {p0, v4}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :cond_1
    const-string v0, "SignalGeneratorImpl.generateSignals.onSuccess"

    const-string v2, ""

    if-nez p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    invoke-interface {p1, v5, v5, v5}, Lcom/google/android/gms/internal/ads/zzbyf;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object p1, p0, Lrme;->d:Lwrh;

    invoke-interface {p1, v3}, Lwrh;->zzg(Z)Lwrh;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lsze;->e:Leze;

    invoke-virtual {p0}, Leze;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :cond_3
    :try_start_2
    iget-object v5, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzb:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    const-string v6, "request_id"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p1, "The request ID is empty in request JSON."

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    if-eqz p1, :cond_5

    const-string v3, "Internal error: request ID is empty in request JSON."

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzbyf;->zzb(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lrme;->d:Lwrh;

    const-string v3, "Request ID empty"

    invoke-interface {p1, v3}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    invoke-interface {p1, v4}, Lwrh;->zzg(Z)Lwrh;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object p0, Lsze;->e:Leze;

    invoke-virtual {p0}, Leze;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :cond_6
    :try_start_4
    iget-object v5, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzf:Landroid/os/Bundle;

    iget-object v6, p0, Lrme;->e:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzL(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzz(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzz(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzG(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzM(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzB(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzA(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v7

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzI(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Ljava/lang/String;)V

    :cond_8
    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzB(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzA(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v6, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    if-eqz v6, :cond_b

    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    invoke-interface {v6, v7, p1, v5}, Lcom/google/android/gms/internal/ads/zzbyf;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_a
    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzb:Ljava/lang/String;

    invoke-interface {v6, v7, p1, v5}, Lcom/google/android/gms/internal/ads/zzbyf;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    :goto_3
    iget-object p1, p0, Lrme;->d:Lwrh;

    invoke-interface {p1, v3}, Lwrh;->zzg(Z)Lwrh;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object p1, Lsze;->e:Leze;

    invoke-virtual {p1}, Leze;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    iget-object p0, p0, Lrme;->d:Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :goto_4
    :try_start_5
    const-string v3, "Failed to create JSON object from the request string."

    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v3, p0, Lrme;->c:Lcom/google/android/gms/internal/ads/zzbyf;

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error for request JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzbyf;->zzb(Ljava/lang/String;)V

    :cond_c
    iget-object v3, p0, Lrme;->d:Lwrh;

    invoke-interface {v3, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {v3, v4}, Lwrh;->zzg(Z)Lwrh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object p0, Lsze;->e:Leze;

    invoke-virtual {p0}, Leze;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :goto_5
    :try_start_6
    iget-object v3, p0, Lrme;->d:Lwrh;

    invoke-interface {v3, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {v3, v4}, Lwrh;->zzg(Z)Lwrh;

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object p1, Lsze;->e:Leze;

    invoke-virtual {p1}, Leze;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    iget-object p0, p0, Lrme;->d:Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_d
    return-void

    :goto_6
    sget-object v0, Lsze;->e:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    iget-object p0, p0, Lrme;->d:Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_e
    throw p1
.end method
