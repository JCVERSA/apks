.class public final synthetic Lszf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5g;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdfl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdfl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lszf;->a:Lcom/google/android/gms/internal/ads/zzdfl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lszf;->a:Lcom/google/android/gms/internal/ads/zzdfl;

    check-cast p1, Lzzf;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Internal show error."

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    invoke-interface {p1, p0}, Lzzf;->h(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
