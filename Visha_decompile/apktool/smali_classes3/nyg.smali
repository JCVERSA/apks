.class public final synthetic Lnyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lztf;


# instance fields
.field public final synthetic a:Lnxg;


# direct methods
.method public synthetic constructor <init>(Lnxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnyg;->a:Lnxg;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1

    iget-object p0, p0, Lnyg;->a:Lnxg;

    :try_start_0
    iget-object p0, p0, Lnxg;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbqx;->zze()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
