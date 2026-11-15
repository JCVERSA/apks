.class Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/similarity/IntersectionSimilarity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TinyBag"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/text/similarity/IntersectionSimilarity;


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/similarity/IntersectionSimilarity;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->this$0:Lorg/apache/commons/text/similarity/IntersectionSimilarity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->lambda$add$0(Ljava/lang/Object;)Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$add$0(Ljava/lang/Object;)Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
    .locals 1

    new-instance p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;-><init>(Lorg/apache/commons/text/similarity/IntersectionSimilarity$1;)V

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    new-instance v0, Lorg/apache/commons/text/similarity/b;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/b;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    iget p1, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-static {}, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->access$000()Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    iget p0, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    return p0
.end method

.method public uniqueElementSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
