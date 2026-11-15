.class public final Lyf/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li8/a;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x500000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lyf/c;->a:J

    .line 8
    .line 9
    const v0, 0x5265c00

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lyf/c;->b:I

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lyf/c;->c:J

    .line 19
    .line 20
    return-void
.end method

.method private final b(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-wide v3, p0, Lyf/c;->c:J

    .line 10
    .line 11
    sub-long/2addr v3, v1

    .line 12
    iget p1, p0, Lyf/c;->b:I

    .line 13
    .line 14
    int-to-long v1, p1

    .line 15
    div-long/2addr v3, v1

    .line 16
    const-wide/16 v1, 0xf

    .line 17
    .line 18
    cmp-long p1, v3, v1

    .line 19
    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lyf/c;->b(Ljava/io/File;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lyf/c;->a:J

    .line 22
    .line 23
    cmp-long p1, v2, v4

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return p1
.end method
