.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcz/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field private c:Ljava/util/Set;

.field private final d:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->c:Ljava/util/Set;

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->d:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    .line 24
    .line 25
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->d:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:I

    .line 31
    .line 32
    iget p1, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:I

    .line 33
    .line 34
    if-eq v2, p1, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    return v0

    .line 38
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
