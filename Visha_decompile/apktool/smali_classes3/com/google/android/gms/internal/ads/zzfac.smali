.class public final synthetic Lcom/google/android/gms/internal/ads/zzfac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ltlh;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Ltlh;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Ltlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Ltlh;

    iget-object v0, v0, Ltlh;->e:Lwlh;

    invoke-static {v0}, Lwlh;->e(Lwlh;)Lhlh;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, p0}, Lhlh;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
