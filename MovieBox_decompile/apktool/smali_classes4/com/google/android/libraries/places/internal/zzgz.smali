.class public final synthetic Lcom/google/android/libraries/places/internal/zzgz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzhc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzhc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgz;->zza:Lcom/google/android/libraries/places/internal/zzhc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgz;->zza:Lcom/google/android/libraries/places/internal/zzhc;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/libraries/places/internal/zzarc;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzhc;->zzd(Lcom/google/android/libraries/places/internal/zzarc;)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
