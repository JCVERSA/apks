.class public final synthetic Lcom/google/android/libraries/places/internal/zzew;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/volley/i$b;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzfa;

.field public final synthetic zzb:Ljava/lang/Class;

.field public final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzfa;Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzew;->zza:Lcom/google/android/libraries/places/internal/zzfa;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzew;->zzb:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzew;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzew;->zza:Lcom/google/android/libraries/places/internal/zzfa;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzew;->zzb:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzew;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    check-cast p1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zzb(Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
