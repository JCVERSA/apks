.class public final Lsyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebg;


# instance fields
.field public final synthetic a:Leff;

.field public final synthetic b:Lhmh;

.field public final synthetic c:Ltyg;


# direct methods
.method public constructor <init>(Ltyg;Leff;Lhmh;)V
    .locals 0

    iput-object p2, p0, Lsyg;->a:Leff;

    iput-object p3, p0, Lsyg;->b:Lhmh;

    iput-object p1, p0, Lsyg;->c:Ltyg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lwzf;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object p1, p0, Lsyg;->a:Leff;

    invoke-virtual {p1}, Leff;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p0, p0, Lsyg;->c:Ltyg;

    invoke-static {p0}, Ltyg;->c(Ltyg;)Lsmg;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p2, p1, p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLsmg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zza()Lhmh;
    .locals 0

    iget-object p0, p0, Lsyg;->b:Lhmh;

    return-object p0
.end method
