.class public final Lcom/google/android/libraries/places/internal/zzazq;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzmh;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzazq;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmh;->zzb(C)Lcom/google/android/libraries/places/internal/zzmh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/libraries/places/internal/zzazq;->zza:Lcom/google/android/libraries/places/internal/zzmh;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/zzazq;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzazq;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/libraries/places/internal/zzayz;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzayz;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/google/android/libraries/places/internal/zzazq;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/libraries/places/internal/zzazq;-><init>(Lcom/google/android/libraries/places/internal/zzazo;ZLcom/google/android/libraries/places/internal/zzazq;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/libraries/places/internal/zzazq;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/libraries/places/internal/zzazq;-><init>(Lcom/google/android/libraries/places/internal/zzazo;ZLcom/google/android/libraries/places/internal/zzazq;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/google/android/libraries/places/internal/zzazq;->zzb:Lcom/google/android/libraries/places/internal/zzazq;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzazq;->zzc:Ljava/util/Map;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzazq;->zzd:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzazo;ZLcom/google/android/libraries/places/internal/zzazq;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzazo;->zzb()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    iget-object v1, p3, Lcom/google/android/libraries/places/internal/zzazq;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p3, Lcom/google/android/libraries/places/internal/zzazq;->zzc:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzazo;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object p3, p3, Lcom/google/android/libraries/places/internal/zzazq;->zzc:Ljava/util/Map;

    .line 6
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzazp;

    .line 7
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/zzazp;->zza:Lcom/google/android/libraries/places/internal/zzazo;

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzazo;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/libraries/places/internal/zzazp;

    .line 9
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzazp;->zza:Lcom/google/android/libraries/places/internal/zzazo;

    iget-boolean v1, v1, Lcom/google/android/libraries/places/internal/zzazp;->zzb:Z

    invoke-direct {v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzazp;-><init>(Lcom/google/android/libraries/places/internal/zzazo;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/google/android/libraries/places/internal/zzazp;

    invoke-direct {p3, p1, p2}, Lcom/google/android/libraries/places/internal/zzazp;-><init>(Lcom/google/android/libraries/places/internal/zzazo;Z)V

    .line 10
    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzazq;->zzc:Ljava/util/Map;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzazq;->zza:Lcom/google/android/libraries/places/internal/zzmh;

    new-instance p3, Ljava/util/HashSet;

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzazp;

    iget-boolean v1, v1, Lcom/google/android/libraries/places/internal/zzazp;->zzb:Z

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzmh;->zzf(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    .line 18
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzazq;->zzd:[B

    return-void
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzazq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzazq;->zzb:Lcom/google/android/libraries/places/internal/zzazq;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzazq;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/libraries/places/internal/zzazp;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzazp;->zza:Lcom/google/android/libraries/places/internal/zzazo;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method final zzc()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzazq;->zzd:[B

    .line 2
    .line 3
    return-object v0
.end method
