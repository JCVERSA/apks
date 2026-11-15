.class public abstract Lig/d;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final synthetic a(Lokio/Buffer;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lig/d;->b(Lokio/Buffer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Lokio/Buffer;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v7, Lokio/Buffer;

    .line 3
    .line 4
    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x40

    .line 12
    .line 13
    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->i(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move-object v2, v7

    .line 21
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 22
    .line 23
    .line 24
    move p0, v0

    .line 25
    :goto_0
    const/16 v1, 0x10

    .line 26
    .line 27
    if-ge p0, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :catch_0
    return v0
.end method
