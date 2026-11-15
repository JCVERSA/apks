.class public final Lb0i;
.super Lcom/google/android/gms/internal/ads/x7;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/x7;-><init>()V

    iput-object p1, p0, Lb0i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb0i;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lb0i;->b:Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzc(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final zzd(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
