.class public final synthetic Lmkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgjh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbvk;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmkh;->a:Lcom/google/android/gms/internal/ads/zzbvk;

    iput-object p2, p0, Lmkh;->b:Ljava/lang/String;

    iput-object p3, p0, Lmkh;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lmkh;->a:Lcom/google/android/gms/internal/ads/zzbvk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvk;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvk;->zzb()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lmkh;->b:Ljava/lang/String;

    iget-object p0, p0, Lmkh;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzbwl;->zze(Lcom/google/android/gms/internal/ads/zzbwa;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
