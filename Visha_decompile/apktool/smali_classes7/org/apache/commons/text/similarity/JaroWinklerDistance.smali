.class public Lorg/apache/commons/text/similarity/JaroWinklerDistance;
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


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final similarity:Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->similarity:Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;

    return-void
.end method

.method public static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->similarity:Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

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

    const-string p1, "CharSequences must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
