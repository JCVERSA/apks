.class public final synthetic Lglh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgjh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbvk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbvk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglh;->a:Lcom/google/android/gms/internal/ads/zzbvk;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lglh;->a:Lcom/google/android/gms/internal/ads/zzbvk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbvk;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbvk;->zzb()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzk(Lcom/google/android/gms/internal/ads/zzbwa;)V

    return-void
.end method
