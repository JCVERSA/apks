.class Lorg/apache/commons/text/diff/StringsComparator$Snake;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/diff/StringsComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snake"
.end annotation


# instance fields
.field private final diag:I

.field private final end:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;->start:I

    iput p2, p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;->end:I

    iput p3, p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;->diag:I

    return-void
.end method


# virtual methods
.method public getDiag()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;->diag:I

    return p0
.end method

.method public getEnd()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;->end:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;->start:I

    return p0
.end method
