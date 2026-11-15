.class public final Lbuh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsmg;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsmg;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuh;->a:Lsmg;

    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkv7;->d(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Failed to get application name"

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbuh;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/AdFormat;IIJ)V
    .locals 3

    iget-object v0, p0, Lbuh;->a:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "cache_resize"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string v1, "cs_ts"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p4, "app"

    iget-object p0, p0, Lbuh;->b:Ljava/lang/String;

    invoke-virtual {v0, p4, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "orig_ma"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "max_ads"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ad_format"

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/AdFormat;IIJLjava/lang/Long;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbuh;->a:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "plaac_ts"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p4, "ad_format"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p1, "app"

    iget-object p0, p0, Lbuh;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "max_ads"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "cache_size"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "action"

    const-string p1, "is_ad_available"

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "plaay_ts"

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_0
    if-eqz p7, :cond_1

    const-string p0, "gqi"

    invoke-virtual {v0, p0, p7}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_1
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/AdFormat;JLjava/lang/String;)V
    .locals 9

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const-string v3, "pano_ts"

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lbuh;->j(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/AdFormat;J)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "paeo_ts"

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v8}, Lbuh;->j(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/AdFormat;J)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v2, "poll_ad"

    const-string v3, "ppac_ts"

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v8}, Lbuh;->j(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/ads/AdFormat;JIILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbuh;->a:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "ppla_ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p2, "ad_format"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p1, "app"

    iget-object p0, p0, Lbuh;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "max_ads"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "cache_size"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "action"

    const-string p1, "poll_ad"

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    if-eqz p6, :cond_0

    const-string p0, "gqi"

    invoke-virtual {v0, p0, p6}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_0
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final g(Lcom/google/android/gms/ads/AdFormat;JIILjava/lang/String;)V
    .locals 9

    const-string v2, "poll_ad"

    const-string v3, "psvroc_ts"

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lbuh;->j(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/util/Map;J)V
    .locals 3

    iget-object v0, p0, Lbuh;->a:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "start_preload"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string v1, "sp_ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p2, "app"

    iget-object p0, p0, Lbuh;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "_count"

    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final i(Lcom/google/android/gms/ads/AdFormat;IJ)V
    .locals 3

    iget-object v0, p0, Lbuh;->a:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "start_preload"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string v1, "sp_ts"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p3, "app"

    iget-object p0, p0, Lbuh;->b:Ljava/lang/String;

    invoke-virtual {v0, p3, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ad_format"

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "max_ads"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final j(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbuh;->a:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p3, "app"

    iget-object p0, p0, Lbuh;->b:Ljava/lang/String;

    invoke-virtual {v0, p3, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    if-nez p1, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "ad_format"

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    if-eqz p2, :cond_1

    const-string p0, "action"

    invoke-virtual {v0, p0, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_1
    if-eqz p8, :cond_2

    const-string p0, "gqi"

    invoke-virtual {v0, p0, p8}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_2
    if-ltz p6, :cond_3

    const-string p0, "max_ads"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_3
    if-ltz p7, :cond_4

    const-string p0, "cache_size"

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_4
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method
