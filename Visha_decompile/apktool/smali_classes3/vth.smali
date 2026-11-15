.class public final Lvth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lwrh;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final synthetic c:La2g;

.field public final synthetic d:Lwth;


# direct methods
.method public constructor <init>(Lwth;Lwrh;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V
    .locals 0

    iput-object p2, p0, Lvth;->a:Lwrh;

    iput-object p3, p0, Lvth;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p4, p0, Lvth;->c:La2g;

    iput-object p1, p0, Lvth;->d:Lwth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lvth;->a:Lwrh;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lwrh;->zzg(Z)Lwrh;

    iget-object v0, p0, Lvth;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    if-nez v0, :cond_1

    iget-object p0, p0, Lvth;->d:Lwth;

    invoke-static {p0}, Lwth;->c(Lwth;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p0

    invoke-interface {p1}, Lwrh;->zzm()Lash;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lvth;->a:Lwrh;

    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zzt;->zza:Lcom/google/android/gms/ads/internal/util/client/zzt;

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lwrh;->zzg(Z)Lwrh;

    iget-object p1, p0, Lvth;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    if-nez p1, :cond_1

    iget-object p1, p0, Lvth;->d:Lwth;

    invoke-static {p1}, Lwth;->c(Lwth;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    invoke-interface {v0}, Lwrh;->zzm()Lash;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lvth;->c:La2g;

    if-eqz p1, :cond_12

    iget-object p0, p0, Lvth;->d:Lwth;

    invoke-static {p0}, Lwth;->b(Lwth;)Lcom/google/android/gms/ads/internal/util/client/zzu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/ads/internal/client/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string p0, "type"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "precision"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currency"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "value"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0x10576

    const/4 v7, -0x1

    const/4 v9, 0x2

    if-eq v0, v6, :cond_6

    const v6, 0x10580

    if-eq v0, v6, :cond_5

    const v6, 0x506e232d

    if-eq v0, v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "ONE_PIXEL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v9

    goto :goto_3

    :cond_5
    const-string v0, "CPM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v1

    goto :goto_3

    :cond_6
    const-string v0, "CPC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p0, v7

    :goto_3
    const/4 v0, 0x3

    if-eqz p0, :cond_a

    if-eq p0, v2, :cond_9

    if-eq p0, v9, :cond_8

    move v6, v1

    :goto_4
    move-wide v10, v4

    goto :goto_5

    :cond_8
    const-wide/16 v10, 0x3e8

    :try_start_1
    div-long/2addr v4, v10

    move v6, v0

    goto :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_9
    move-wide v10, v4

    move v6, v9

    goto :goto_5

    :cond_a
    move v6, v2

    goto :goto_4

    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const v4, -0x7f136fe4

    if-eq p0, v4, :cond_d

    const v4, 0x17cbce3b

    if-eq p0, v4, :cond_c

    const v4, 0x4bc5cce6    # 2.5926092E7f

    if-eq p0, v4, :cond_b

    goto :goto_6

    :cond_b
    const-string p0, "PUBLISHER_PROVIDED"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move v7, v2

    goto :goto_6

    :cond_c
    const-string p0, "PRECISE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move v7, v9

    goto :goto_6

    :cond_d
    const-string p0, "ESTIMATED"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move v7, v1

    :cond_e
    :goto_6
    if-eqz v7, :cond_11

    if-eq v7, v2, :cond_10

    if-eq v7, v9, :cond_f

    move v7, v1

    goto :goto_7

    :cond_f
    move v7, v0

    goto :goto_7

    :cond_10
    move v7, v9

    goto :goto_7

    :cond_11
    move v7, v2

    :goto_7
    :try_start_2
    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzt;

    move-object v5, p0

    move-wide v9, v10

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/ads/internal/client/zzt;-><init>(IILjava/lang/String;J)V

    invoke-virtual {p1, p0}, La2g;->F(Lcom/google/android/gms/ads/internal/client/zzt;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_8
    const-string p1, "UrlPinger.pingUrl"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_12
    :goto_9
    return-void
.end method
