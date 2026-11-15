.class final Lcom/google/android/gms/measurement/internal/zzjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/i;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/j;->J(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzee;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/i;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/j;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/j;->K(Lcom/google/android/gms/measurement/internal/j;)V

    return-void
.end method
