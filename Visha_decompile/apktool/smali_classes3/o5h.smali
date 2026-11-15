.class public final Lo5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Lenh;

.field public final b:J


# direct methods
.method public constructor <init>(Lenh;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5h;->a:Lenh;

    iput-wide p2, p0, Lo5h;->b:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->b:Landroid/os/Bundle;

    iget-object p0, p0, Lo5h;->a:Lenh;

    iget-object v0, p0, Lenh;->f:Ljava/lang/String;

    const-string v1, "slotname"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "test_request"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const-string v5, "tag_for_child_directed_treatment"

    invoke-static {p1, v5, v0, v4}, Lunh;->e(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v2, "tag_for_under_age_of_consent"

    invoke-static {p1, v2, v0, v1}, Lunh;->e(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {p1, v1, v0}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    const-string v1, "neighboring_content_urls"

    invoke-static {p1, v1, v0}, Lunh;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcye;->B7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p0, "extras"

    invoke-static {p1, p0, v0}, Lunh;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 14

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lo5h;->a:Lenh;

    iget-object v1, v0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget v2, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzw:I

    const-string v3, "http_timeout_millis"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "slotname"

    iget-object v3, v0, Lenh;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lenh;->o:Lrmh;

    iget v0, v0, Lrmh;->a:I

    if-eqz v0, :cond_c

    const/4 v2, -0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "is_rewarded_interstitial"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "is_new_rewarded"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-wide v5, p0, Lo5h;->b:J

    const-string p0, "start_signals_timestamp"

    invoke-virtual {p1, p0, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result p0

    const-string v0, "is_sdk_preload"

    invoke-static {p1, v0, v4, p0}, Lunh;->g(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v5, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    const-string v6, "cust_age"

    invoke-static {p1, v6, p0, v0}, Lunh;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    const-string v0, "extras"

    invoke-static {p1, v0, p0}, Lunh;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    if-eq p0, v2, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    const-string v6, "cust_gender"

    invoke-static {p1, v6, p0, v0}, Lunh;->e(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget-object p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    const-string v0, "kw"

    invoke-static {p1, v0, p0}, Lunh;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    if-eq p0, v2, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    const-string v6, "tag_for_child_directed_treatment"

    invoke-static {p1, v6, p0, v0}, Lunh;->e(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget-boolean p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz p0, :cond_5

    const-string p0, "test_request"

    invoke-virtual {p1, p0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    const-string v0, "ppt_p13n"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    if-lt p0, v3, :cond_6

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzh:Z

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v5

    :goto_4
    const-string v6, "d_imp_hdr"

    invoke-static {p1, v6, v4, v0}, Lunh;->e(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    if-lt p0, v3, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v6, "ppid"

    invoke-static {p1, v6, v0, v3}, Lunh;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, v10

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    mul-double/2addr v12, v10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v10, "radius"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v3, "lat"

    double-to-long v8, v8

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "long"

    double-to-long v8, v12

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "time"

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "uule"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    const-string v3, "url"

    invoke-static {p1, v3, v0}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    const-string v3, "neighboring_content_urls"

    invoke-static {p1, v3, v0}, Lunh;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    const-string v3, "custom_targeting"

    invoke-static {p1, v3, v0}, Lunh;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    const-string v3, "category_exclusions"

    invoke-static {p1, v3, v0}, Lunh;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    const-string v3, "request_agent"

    invoke-static {p1, v3, v0}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzq:Ljava/lang/String;

    const-string v3, "request_pkg"

    invoke-static {p1, v3, v0}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    const/4 v3, 0x7

    if-lt p0, v3, :cond_9

    move v3, v4

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    const-string v6, "is_designed_for_families"

    invoke-static {p1, v6, v0, v3}, Lunh;->g(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const/16 v0, 0x8

    if-lt p0, v0, :cond_b

    iget p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    if-eq p0, v2, :cond_a

    goto :goto_7

    :cond_a
    move v4, v5

    :goto_7
    const-string v0, "tag_for_under_age_of_consent"

    invoke-static {p1, v0, p0, v4}, Lunh;->e(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget-object p0, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    const-string v0, "max_ad_content_rating"

    invoke-static {p1, v0, p0}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    const/4 p0, 0x0

    throw p0
.end method
