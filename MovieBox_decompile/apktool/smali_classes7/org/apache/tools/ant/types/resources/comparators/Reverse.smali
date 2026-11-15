.class public Lorg/apache/tools/ant/types/resources/comparators/Reverse;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "source.java"


# static fields
.field private static final ONE_NESTED:Ljava/lang/String; = "You must not nest more than one ResourceComparator for reversal."


# instance fields
.field private nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 9
    .line 10
    const-string v0, "You must not nest more than one ResourceComparator for reversal."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method protected resourceCompare(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/t;->compareTo(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    mul-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    return p1
.end method
