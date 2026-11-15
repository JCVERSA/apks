.class public final Lcom/google/android/gms/ads/internal/util/zzaz;
.super Lqme;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpme;)V
    .locals 0

    invoke-direct {p0, p2}, Lqme;-><init>(Lpme;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->c:Landroid/content/Context;

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lhme;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzaz;

    new-instance v1, Lene;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lene;-><init>(Ldne;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/zzaz;-><init>(Landroid/content/Context;Lpme;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lqyh;->a()Lsyh;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "admob_volley"

    invoke-static {v2, p0, v3}, Lryh;->a(Lsyh;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lhme;

    new-instance v2, Lzme;

    const/high16 v3, 0x1400000

    invoke-direct {v2, v1, v3}, Lzme;-><init>(Ljava/io/File;I)V

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lhme;-><init>(Lyle;Leme;I)V

    invoke-virtual {p0}, Lhme;->d()V

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/c;)Lfme;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaps;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zza()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zzk()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcye;->E4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const v1, 0xcc77c0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzt(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/s3;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/s3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/s3;->zza(Lcom/google/android/gms/internal/ads/c;)Lfme;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zzk()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Got gmscore asset response: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get gmscore asset response: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lqme;->zza(Lcom/google/android/gms/internal/ads/c;)Lfme;

    move-result-object p0

    return-object p0
.end method
