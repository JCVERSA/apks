.class final Lcom/google/android/gms/measurement/internal/zzhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzc:Lcom/google/android/gms/measurement/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzc:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Z

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/j;->U(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
