.class public final synthetic Lcom/google/android/gms/internal/ads/zzabp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk7e;

.field public final synthetic zzb:Ld1j;


# direct methods
.method public synthetic constructor <init>(Lk7e;Ld1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Lk7e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabp;->zzb:Ld1j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Lk7e;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabp;->zzb:Ld1j;

    invoke-static {v0, p0}, Lk7e;->f(Lk7e;Ld1j;)V

    return-void
.end method
