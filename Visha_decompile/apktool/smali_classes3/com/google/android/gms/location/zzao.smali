.class Lcom/google/android/gms/location/zzao;
.super Lcom/google/android/gms/internal/location/zzah;
.source "SourceFile"


# instance fields
.field private final zza:Lzda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzda;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzda;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzda;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzah;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/zzao;->zza:Lzda;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/location/zzaa;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzaa;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/location/zzao;->zza:Lzda;

    invoke-static {p1, p0}, Ljea;->a(Lcom/google/android/gms/common/api/Status;Lzda;)V

    return-void
.end method

.method public zzc()V
    .locals 0

    return-void
.end method
