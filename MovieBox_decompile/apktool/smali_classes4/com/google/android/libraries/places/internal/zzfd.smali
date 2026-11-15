.class public final synthetic Lcom/google/android/libraries/places/internal/zzfd;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/volley/i$a;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfd;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfd;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzfg;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/android/volley/VolleyError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
