.class final Lcom/google/android/libraries/places/internal/zzbsm;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final zza:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/zzbtm;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zzd:Lcom/google/android/libraries/places/internal/zzbtm;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsm;->zza:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method
