.class public abstract Lorg/apache/tools/ant/types/f;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:Ljava/lang/String;

.field private b:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/tools/ant/types/f;->b:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/types/f;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract c()[Ljava/lang/String;
.end method

.method public final d(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/f;->c()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v0

    .line 13
    if-ge v2, v3, :cond_2

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    return v1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/f;->d(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/tools/ant/types/f;->b:I

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/tools/ant/types/f;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string p1, " is not a legal value for this attribute"

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/f;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
