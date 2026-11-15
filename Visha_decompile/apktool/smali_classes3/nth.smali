.class public final Lnth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/client/zzx;

.field public final b:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field public final c:Lh8i;

.field public final d:Loth;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/zzx;Lcom/google/android/gms/ads/internal/util/client/zzu;Lh8i;Loth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnth;->a:Lcom/google/android/gms/ads/internal/util/client/zzx;

    iput-object p2, p0, Lnth;->b:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p3, p0, Lnth;->c:Lh8i;

    iput-object p4, p0, Lnth;->d:Loth;

    return-void
.end method

.method public static synthetic a(Lnth;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    iget-object p0, p0, Lnth;->b:Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnth;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    iget-object p0, p0, Lnth;->b:Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnth;IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lim5;
    .locals 3

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzt;

    if-eq p5, v0, :cond_0

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lnth;->a:Lcom/google/android/gms/ads/internal/util/client/zzx;

    invoke-virtual {p5}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzb()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {p5}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zza()D

    move-result-wide v0

    long-to-double p2, p2

    mul-double/2addr v0, p2

    double-to-long v0, v0

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p4, v0, v1, p1}, Lnth;->e(Ljava/lang/String;JI)Lim5;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lim5;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lnth;->e(Ljava/lang/String;JI)Lim5;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;JI)Lim5;
    .locals 8

    iget-object v0, p0, Lnth;->a:Lcom/google/android/gms/ads/internal/util/client/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzc()I

    move-result v1

    if-le p4, v1, :cond_1

    iget-object p0, p0, Lnth;->d:Loth;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzd()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Loth;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Lcye;->H8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pa"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    new-instance v7, Lmth;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lmth;-><init>(Lnth;IJLjava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lnth;->c:Lh8i;

    new-instance p2, Llth;

    invoke-direct {p2, p0, v0}, Llth;-><init>(Lnth;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    invoke-static {p0, v7, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lnth;->c:Lh8i;

    new-instance p4, Lkth;

    invoke-direct {p4, p0, v0}, Lkth;-><init>(Lnth;Ljava/lang/String;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p4, p2, p3, p0}, Lh8i;->l(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lf8i;

    move-result-object p0

    invoke-static {p0, v7, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
