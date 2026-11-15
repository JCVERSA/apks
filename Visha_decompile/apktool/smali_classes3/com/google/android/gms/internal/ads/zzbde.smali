.class public final synthetic Lcom/google/android/gms/internal/ads/zzbde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbdh;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbdh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbde;->zza:Lcom/google/android/gms/internal/ads/zzbdh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbde;->zzb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbde;->zza:Lcom/google/android/gms/internal/ads/zzbdh;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbde;->zzb:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdh;->b(Lcom/google/android/gms/internal/ads/zzbdh;I)V

    return-void
.end method
