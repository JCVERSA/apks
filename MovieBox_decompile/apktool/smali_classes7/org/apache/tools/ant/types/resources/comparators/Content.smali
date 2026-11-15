.class public Lorg/apache/tools/ant/types/resources/comparators/Content;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "source.java"


# instance fields
.field private binary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public isBinary()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    .line 2
    .line 3
    return v0
.end method

.method protected resourceCompare(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lorg/apache/tools/ant/util/o;->b(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;Z)I

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p2
.end method

.method public setBinary(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    .line 2
    .line 3
    return-void
.end method
