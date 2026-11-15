.class final Lcom/google/android/gms/internal/ads/zzfse;
.super Lcom/google/android/gms/internal/ads/zzfqx;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/j6;

.field private final zzb:Lp1i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/j6;Lp1i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfse;->zza:Lcom/google/android/gms/internal/ads/j6;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfse;->zzb:Lp1i;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x1fd6

    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lo1i;->c()Ln1i;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln1i;->b(I)Ln1i;

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ln1i;->a(Ljava/lang/String;)Ln1i;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfse;->zzb:Lp1i;

    invoke-virtual {v1}, Ln1i;->c()Lo1i;

    move-result-object v1

    invoke-interface {p1, v1}, Lp1i;->a(Lo1i;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfse;->zza:Lcom/google/android/gms/internal/ads/j6;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/j6;->d()V

    :cond_1
    return-void
.end method
