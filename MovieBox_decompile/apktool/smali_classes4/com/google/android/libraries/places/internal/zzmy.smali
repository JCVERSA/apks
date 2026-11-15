.class public final Lcom/google/android/libraries/places/internal/zzmy;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzma;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzmv;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzmv;ZLcom/google/android/libraries/places/internal/zzma;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmy;->zzb:Lcom/google/android/libraries/places/internal/zzmv;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzmy;->zza:Lcom/google/android/libraries/places/internal/zzma;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzmy;)Lcom/google/android/libraries/places/internal/zzma;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzmy;->zza:Lcom/google/android/libraries/places/internal/zzma;

    .line 2
    .line 3
    return-object p0
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmy;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/libraries/places/internal/zzmv;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzmv;-><init>(Lcom/google/android/libraries/places/internal/zzma;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/google/android/libraries/places/internal/zzly;->zza:Lcom/google/android/libraries/places/internal/zzma;

    .line 9
    .line 10
    const v2, 0x7fffffff

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v1, v3, p0, v2}, Lcom/google/android/libraries/places/internal/zzmy;-><init>(Lcom/google/android/libraries/places/internal/zzmv;ZLcom/google/android/libraries/places/internal/zzma;I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmy;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmu;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmy;->zzb:Lcom/google/android/libraries/places/internal/zzmv;

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzmu;-><init>(Lcom/google/android/libraries/places/internal/zzmv;Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzmy;->zzb:Lcom/google/android/libraries/places/internal/zzmv;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/libraries/places/internal/zzmy;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, 0x7fffffff

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v0, v2, p1, v3}, Lcom/google/android/libraries/places/internal/zzmy;-><init>(Lcom/google/android/libraries/places/internal/zzmv;ZLcom/google/android/libraries/places/internal/zzma;I)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public final zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmw;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzmw;-><init>(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final zzf(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 1
    const-string p1, "3.5.0"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmy;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
