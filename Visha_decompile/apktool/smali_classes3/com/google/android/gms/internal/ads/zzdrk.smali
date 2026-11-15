.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzmg;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lzmg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zza:Lzmg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zza:Lzmg;

    iget-object v0, v0, Lzmg;->d:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    return-void
.end method
