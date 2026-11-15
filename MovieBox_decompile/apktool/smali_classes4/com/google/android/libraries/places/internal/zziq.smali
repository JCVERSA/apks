.class public final synthetic Lcom/google/android/libraries/places/internal/zziq;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zziu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zziu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zziq;->zza:Lcom/google/android/libraries/places/internal/zziu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zziu;->zzj(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
