.class public final synthetic Lcom/google/android/libraries/places/internal/zzlb;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzlb;->zza:Lcom/google/android/libraries/places/internal/zzle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzlh;->zza:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzlb;->zza:Lcom/google/android/libraries/places/internal/zzle;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlg;->zza()Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationToken;->isCancellationRequested()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/tasks/Tasks;->forCanceled()Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    return-object p1
.end method
