.class final Lcom/google/android/gms/measurement/internal/zzlm;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Landroid/os/Bundle;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzd:J

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zze:Lcom/google/android/gms/measurement/internal/zzlj;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zze:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzd:J

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
