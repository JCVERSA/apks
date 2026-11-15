.class public final Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/io/Serializable;",
        "V::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CLEAR_FACTOR:D = 0.75

.field public static final DEFAULT_MAXIMUM_SIZE:I = 0x7fffffff


# instance fields
.field private clearFactor:D

.field private final concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Lorg/schabi/newpipe/extractor/utils/Pair<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private maximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->lambda$keepNewestEntries$1(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic b(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->lambda$keepNewestEntries$0(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V

    return-void
.end method

.method private keepNewestEntries(I)V
    .locals 3

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sub-int/2addr v0, p1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lyx5;

    invoke-direct {v2, v0, p1}, Lyx5;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lzx5;

    invoke-direct {v0, p0}, Lzx5;-><init>(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$keepNewestEntries$0(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->setFirst(Ljava/io/Serializable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$keepNewestEntries$1(Ljava/util/Map$Entry;)V
    .locals 1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/io/Serializable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/schabi/newpipe/extractor/utils/Pair<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/utils/Pair;

    return-object p0
.end method

.method public getClearFactor()D
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-wide v0
.end method

.method public getMaximumSize()J
    .locals 2

    iget p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public put(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ne v0, v1, :cond_1

    int-to-double v0, v1

    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/utils/Pair;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clear()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->resetClearFactor()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->resetMaximumSize()V

    return-void
.end method

.method public resetClearFactor()V
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-void
.end method

.method public resetMaximumSize()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    return-void
.end method

.method public setClearFactor(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid clear factor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaximumSize(I)V
    .locals 4

    if-lez p1, :cond_2

    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-double v0, p1

    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    :cond_1
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid maximum size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ManifestCreatorCache[clearFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", maximumSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", concurrentHashMap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
