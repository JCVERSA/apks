.class public final synthetic Lcom/google/android/gms/measurement/internal/zzgl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzgm;

.field private synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(JLjava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
