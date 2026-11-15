.class public final synthetic Lcom/google/android/libraries/places/internal/zzji;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzjj;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzjj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzji;->zza:Lcom/google/android/libraries/places/internal/zzjj;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzji;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzji;->zza:Lcom/google/android/libraries/places/internal/zzjj;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzji;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzjj;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
