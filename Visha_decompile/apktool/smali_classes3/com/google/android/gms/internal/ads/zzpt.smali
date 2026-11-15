.class public final synthetic Lcom/google/android/gms/internal/ads/zzpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:Lerj;

.field public final synthetic zzc:Lg1j;


# direct methods
.method public synthetic constructor <init>(Lchj;Lerj;Lg1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Lerj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Lg1j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lchj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Lerj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Lg1j;

    invoke-static {v0, v1, p0}, Lchj;->h(Lchj;Lerj;Lg1j;)V

    return-void
.end method
