.class final Lcom/google/android/gms/internal/ads/zzcar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcar;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcar;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "surfaceCreated"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcau;->d(Lcom/google/android/gms/internal/ads/zzcau;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
