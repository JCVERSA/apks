.class final Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/similarity/IntersectionSimilarity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BagCount"
.end annotation


# static fields
.field private static final ZERO:Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;


# instance fields
.field count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;-><init>()V

    sput-object v0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->ZERO:Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/text/similarity/IntersectionSimilarity$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->ZERO:Lorg/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    return-object v0
.end method
