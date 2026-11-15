.class public Lorg/apache/commons/text/similarity/JaccardDistance;
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
.field private final jaccardSimilarity:Lorg/apache/commons/text/similarity/JaccardSimilarity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/text/similarity/JaccardSimilarity;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/JaccardSimilarity;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/similarity/JaccardDistance;->jaccardSimilarity:Lorg/apache/commons/text/similarity/JaccardSimilarity;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/text/similarity/JaccardDistance;->jaccardSimilarity:Lorg/apache/commons/text/similarity/JaccardSimilarity;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaccardSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaccardDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
