.class public final synthetic Lcom/google/android/gms/internal/ads/zzcff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/c4;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/c4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcff;->zza:Lcom/google/android/gms/internal/ads/c4;

    const-string p1, "about:blank"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcff;->zza:Lcom/google/android/gms/internal/ads/c4;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzb:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/c4;->q(Lcom/google/android/gms/internal/ads/c4;Ljava/lang/String;)V

    return-void
.end method
