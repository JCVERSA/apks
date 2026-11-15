.class public final Lezg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebg;


# instance fields
.field public final synthetic a:Lnxg;

.field public final synthetic b:Lhmh;

.field public final synthetic c:Lfzg;


# direct methods
.method public constructor <init>(Lfzg;Lnxg;Lhmh;)V
    .locals 0

    iput-object p2, p0, Lezg;->a:Lnxg;

    iput-object p3, p0, Lezg;->b:Lhmh;

    iput-object p1, p0, Lezg;->c:Lfzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lwzf;)V
    .locals 1

    :try_start_0
    iget-object p3, p0, Lezg;->a:Lnxg;

    iget-object p3, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast p3, Leoh;

    invoke-virtual {p3, p1}, Leoh;->A(Z)V

    iget-object p0, p0, Lezg;->c:Lfzg;

    invoke-static {p0}, Lfzg;->c(Lfzg;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    iget p0, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object p1, Lcye;->W0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_0

    invoke-virtual {p3}, Leoh;->C()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Leoh;->D(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot show interstitial."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfl;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zza()Lhmh;
    .locals 0

    iget-object p0, p0, Lezg;->b:Lhmh;

    return-object p0
.end method
