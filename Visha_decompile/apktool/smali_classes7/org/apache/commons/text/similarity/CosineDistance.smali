.class public Lorg/apache/commons/text/similarity/CosineDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final cosineSimilarity:Lorg/apache/commons/text/similarity/CosineSimilarity;

.field private final tokenizer:Lorg/apache/commons/text/similarity/Tokenizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/similarity/Tokenizer<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/text/similarity/RegexTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/RegexTokenizer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/similarity/CosineDistance;->tokenizer:Lorg/apache/commons/text/similarity/Tokenizer;

    new-instance v0, Lorg/apache/commons/text/similarity/CosineSimilarity;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/CosineSimilarity;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/similarity/CosineDistance;->cosineSimilarity:Lorg/apache/commons/text/similarity/CosineSimilarity;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/similarity/CosineDistance;->tokenizer:Lorg/apache/commons/text/similarity/Tokenizer;

    invoke-interface {v0, p1}, Lorg/apache/commons/text/similarity/Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/text/similarity/CosineDistance;->tokenizer:Lorg/apache/commons/text/similarity/Tokenizer;

    invoke-interface {v0, p2}, Lorg/apache/commons/text/similarity/Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    .line 4
    invoke-static {p1}, Lorg/apache/commons/text/similarity/Counter;->of([Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lorg/apache/commons/text/similarity/Counter;->of([Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object p2

    .line 6
    iget-object p0, p0, Lorg/apache/commons/text/similarity/CosineDistance;->cosineSimilarity:Lorg/apache/commons/text/similarity/CosineSimilarity;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/CosineSimilarity;->cosineSimilarity(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/CosineDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
