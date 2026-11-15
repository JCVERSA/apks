.class public final synthetic Lcom/google/android/gms/internal/ads/zzekm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Le5h;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Le5h;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekm;->zza:Le5h;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekm;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekm;->zza:Le5h;

    iget-object v0, v0, Le5h;->e:Lf5h;

    invoke-static {v0}, Lf5h;->c(Lf5h;)Lz4h;

    move-result-object v0

    invoke-virtual {v0}, Lz4h;->a()Lnzf;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzekm;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-interface {v0, p0}, Lnzf;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
