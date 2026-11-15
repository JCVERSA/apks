.class final Lcom/google/android/gms/internal/ads/zzccj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/y3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/y3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->zza:Lcom/google/android/gms/internal/ads/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzz()Lshf;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzccj;->zza:Lcom/google/android/gms/internal/ads/y3;

    invoke-virtual {v0, p0}, Lshf;->f(Lcom/google/android/gms/internal/ads/y3;)V

    return-void
.end method
