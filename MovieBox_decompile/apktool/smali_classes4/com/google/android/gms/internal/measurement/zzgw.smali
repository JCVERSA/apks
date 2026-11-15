.class final Lcom/google/android/gms/internal/measurement/zzgw;
.super Landroid/database/ContentObserver;
.source "source.java"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzgu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgu;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zza:Lcom/google/android/gms/internal/measurement/zzgu;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zza:Lcom/google/android/gms/internal/measurement/zzgu;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgu;->zzd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
