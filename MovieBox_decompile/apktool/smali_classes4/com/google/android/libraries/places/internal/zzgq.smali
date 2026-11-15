.class public final synthetic Lcom/google/android/libraries/places/internal/zzgq;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzaka;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzaka;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgq;->zza:Lcom/google/android/libraries/places/internal/zzaka;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgq;->zza:Lcom/google/android/libraries/places/internal/zzaka;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
