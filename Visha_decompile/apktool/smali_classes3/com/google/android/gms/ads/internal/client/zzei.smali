.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzek;

.field public final synthetic zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzek;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzei;->zza:Lcom/google/android/gms/ads/internal/client/zzek;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzei;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzei;->zza:Lcom/google/android/gms/ads/internal/client/zzek;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzei;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzk(Lcom/google/android/gms/ads/internal/client/zzek;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
