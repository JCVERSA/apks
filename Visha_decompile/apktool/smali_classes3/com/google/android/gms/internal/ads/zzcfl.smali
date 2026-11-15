.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfn;

.field public final synthetic zzb:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfn;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zza:Lcom/google/android/gms/internal/ads/zzcfn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zza:Lcom/google/android/gms/internal/ads/zzcfn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzb:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzc(Lcom/google/android/gms/internal/ads/zzcfn;Ljava/util/Map;)V

    return-void
.end method
