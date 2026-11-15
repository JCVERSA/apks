.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/t3;

.field public final synthetic zzb:Lq6f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t3;Lfre;Lq6f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zza:Lcom/google/android/gms/internal/ads/t3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zzb:Lq6f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zza:Lcom/google/android/gms/internal/ads/t3;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zzb:Lq6f;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/t3;->h(Lcom/google/android/gms/internal/ads/t3;Lfre;Lq6f;)V

    return-void
.end method
