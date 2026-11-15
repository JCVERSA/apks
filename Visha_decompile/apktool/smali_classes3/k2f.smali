.class public final synthetic Lk2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    check-cast p1, Lujf;

    sget-object p0, Lm3f;->a:Ln3f;

    const-string p0, "u"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "URL missing from httpTrack GMSG."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object p0, p1

    check-cast p0, Lvif;

    invoke-interface {p0}, Lvif;->zzD()Lhmh;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lvif;->zzD()Lhmh;

    move-result-object p0

    iget-object p0, p0, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzbw;

    invoke-interface {p1}, Lujf;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lbkf;

    invoke-interface {p1}, Lbkf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Loth;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lim5;

    return-void
.end method
