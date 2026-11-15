.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjw;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private synthetic zzb:Landroid/os/Bundle;

.field private synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/os/Bundle;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
