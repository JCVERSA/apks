.class final Lcom/google/android/gms/internal/location/zzy;
.super Lcom/google/android/gms/internal/location/zzah;
.source "SourceFile"


# instance fields
.field private final zza:Loa0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loa0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Loa0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loa0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzah;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzy;->zza:Loa0;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/location/zzaa;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzy;->zza:Loa0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzaa;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-interface {p0, p1}, Loa0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
