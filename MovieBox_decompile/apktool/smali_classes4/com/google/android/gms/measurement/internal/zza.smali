.class final Lcom/google/android/gms/measurement/internal/zza;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzb;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zza;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zza;->zzb:J

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzc:Lcom/google/android/gms/measurement/internal/zzb;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzc:Lcom/google/android/gms/measurement/internal/zzb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzb:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzb;->zza(Lcom/google/android/gms/measurement/internal/zzb;Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
