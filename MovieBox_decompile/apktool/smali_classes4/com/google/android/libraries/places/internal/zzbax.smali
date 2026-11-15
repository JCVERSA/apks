.class public final Lcom/google/android/libraries/places/internal/zzbax;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzc:[[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput v0, v1, v2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aput v0, v1, v0

    .line 16
    .line 17
    const-class v0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [[Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbay;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbax;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v5, v4

    .line 8
    const/4 v6, -0x1

    .line 9
    if-ge v3, v5, :cond_1

    .line 10
    .line 11
    aget-object v4, v4, v3

    .line 12
    .line 13
    aget-object v4, v4, v2

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/2addr v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v6

    .line 25
    :goto_1
    if-ne v3, v6, :cond_2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    .line 28
    .line 29
    array-length v4, v3

    .line 30
    add-int/lit8 v5, v4, 0x1

    .line 31
    .line 32
    new-array v7, v0, [I

    .line 33
    .line 34
    aput v0, v7, v1

    .line 35
    .line 36
    aput v5, v7, v2

    .line 37
    .line 38
    const-class v5, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, [[Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iput-object v5, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    .line 50
    .line 51
    array-length v3, v5

    .line 52
    add-int/2addr v3, v6

    .line 53
    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    .line 54
    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p1, v0, v2

    .line 58
    .line 59
    aput-object p2, v0, v1

    .line 60
    .line 61
    aput-object v0, v4, v3

    .line 62
    .line 63
    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbax;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const-string v1, "addrs is empty"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbax;->zza:Ljava/util/List;

    .line 22
    .line 23
    return-object p0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbba;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbba;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbax;->zza:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbba;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;[[Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbaz;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
