.class public final synthetic Lcom/google/android/libraries/places/internal/zzli;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzln;

.field public final synthetic zzb:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzln;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzli;->zza:Lcom/google/android/libraries/places/internal/zzln;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzli;->zzb:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzli;->zza:Lcom/google/android/libraries/places/internal/zzln;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzli;->zzb:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzc(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/tasks/Task;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
