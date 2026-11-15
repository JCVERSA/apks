.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzet;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzet;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zza:Lcom/google/android/gms/ads/internal/client/zzet;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zza:Lcom/google/android/gms/ads/internal/client/zzet;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzet;->zzm(Lcom/google/android/gms/ads/internal/client/zzet;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
