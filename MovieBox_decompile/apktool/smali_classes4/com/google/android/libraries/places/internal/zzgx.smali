.class public final synthetic Lcom/google/android/libraries/places/internal/zzgx;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzhc;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzhc;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgx;->zza:Lcom/google/android/libraries/places/internal/zzhc;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzgx;->zzb:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgx;->zza:Lcom/google/android/libraries/places/internal/zzhc;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzgx;->zzb:J

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/libraries/places/internal/zzhc;->zzj(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 7
    .line 8
    .line 9
    return-object p1
.end method
