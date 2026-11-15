.class Lcom/google/android/play/core/review/zzg;
.super Lcom/google/android/play/core/review/internal/zzg;
.source "SourceFile"


# instance fields
.field final zza:Lo1j;

.field final zzb:Lzda;

.field final synthetic zzc:Ln1j;


# direct methods
.method public constructor <init>(Ln1j;Lo1j;Lzda;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzg;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/review/zzg;->zza:Lo1j;

    iput-object p3, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lzda;

    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
