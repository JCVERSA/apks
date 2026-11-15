.class final Lcom/google/android/gms/internal/location/zzax;
.super Lcom/google/android/gms/internal/location/zzaj;
.source "SourceFile"


# instance fields
.field private zza:Loa0;
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzaj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Loa0;

    return-void
.end method

.method private final zze(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Loa0;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "LocationClientImpl"

    const-string v0, "onRemoveGeofencesResult called multiple times"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-static {p1}, Loo5;->a(I)I

    move-result p1

    invoke-static {p1}, Loo5;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Loa0;

    invoke-interface {v0, p1}, Loa0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Loa0;

    return-void
.end method


# virtual methods
.method public final zzb(I[Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "LocationClientImpl"

    const-string p2, "Unexpected call to onAddGeofencesResult"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzc(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzax;->zze(I)V

    return-void
.end method

.method public final zzd(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzax;->zze(I)V

    return-void
.end method
