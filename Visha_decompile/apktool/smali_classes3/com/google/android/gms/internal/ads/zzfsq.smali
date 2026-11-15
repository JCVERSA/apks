.class public final synthetic Lcom/google/android/gms/internal/ads/zzfsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lw1i;

.field public final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lw1i;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zza:Lw1i;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zza:Lw1i;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zzb:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lw1i;->g(Lw1i;Ljava/lang/Runnable;)V

    return-void
.end method
