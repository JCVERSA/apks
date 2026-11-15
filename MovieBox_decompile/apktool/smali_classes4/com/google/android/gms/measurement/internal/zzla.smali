.class final Lcom/google/android/gms/measurement/internal/zzla;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzje;

.field private final synthetic zzb:J

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzje;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZLcom/google/android/gms/measurement/internal/zzje;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:J

    .line 4
    .line 5
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzc:Z

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzd:Lcom/google/android/gms/measurement/internal/zzje;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:J

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzc:Z

    .line 16
    .line 17
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzd:Lcom/google/android/gms/measurement/internal/zzje;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
