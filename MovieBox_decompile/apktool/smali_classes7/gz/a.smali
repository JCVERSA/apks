.class public abstract Lgz/a;
.super Ljava/io/FilterReader;
.source "source.java"


# instance fields
.field private a:Z

.field private b:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lgz/a;->a:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lgz/a;->b:Lorg/apache/tools/ant/Project;

    .line 16
    .line 17
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgz/a;->b:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-void
.end method

.method public final read([CII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    add-int v2, p2, v0

    .line 16
    .line 17
    int-to-char v1, v1

    .line 18
    aput-char v1, p1, v2

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    return p3
.end method

.method public final skip(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    :goto_0
    cmp-long v2, v0, p1

    .line 8
    .line 9
    if-gez v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-wide p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "skip value is negative"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
