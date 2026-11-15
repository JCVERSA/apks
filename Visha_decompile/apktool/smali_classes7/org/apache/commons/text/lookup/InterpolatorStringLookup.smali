.class Lorg/apache/commons/text/lookup/InterpolatorStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lorg/apache/commons/text/lookup/AbstractStringLookup;

.field private static final PREFIX_SEPARATOR:C = ':'


# instance fields
.field private final defaultStringLookup:Lorg/apache/commons/text/lookup/StringLookup;

.field private final stringLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/AbstractStringLookup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Lorg/apache/commons/text/lookup/StringLookup;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/apache/commons/text/lookup/StringLookup;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->defaultStringLookup:Lorg/apache/commons/text/lookup/StringLookup;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/text/lookup/b;

    invoke-direct {p2}, Lorg/apache/commons/text/lookup/b;-><init>()V

    new-instance v0, Ln45;

    invoke-direct {v0}, Ln45;-><init>()V

    invoke-static {p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 5
    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->addDefaultStringLookups(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/lookup/StringLookup;)V
    .locals 2

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;Lorg/apache/commons/text/lookup/StringLookup;Z)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->lambda$new$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getStringLookupMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    return-object p0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/text/lookup/StringLookupFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/text/lookup/StringLookup;

    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Lorg/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->defaultStringLookup:Lorg/apache/commons/text/lookup/StringLookup;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lorg/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [stringLookupMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultStringLookup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->defaultStringLookup:Lorg/apache/commons/text/lookup/StringLookup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
