.class public Lorg/apache/tools/zip/ZipEntry;
.super Ljava/util/zip/ZipEntry;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final PLATFORM_FAT:I = 0x0

.field private static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10


# instance fields
.field private externalAttributes:J

.field private extraFields:Ljava/util/Vector;

.field private internalAttributes:I

.field private name:Ljava/lang/String;

.field private platform:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 20
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 22
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 25
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 3
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 6
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 9
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 12
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-static {p1}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([B)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 17
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 18
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 19
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    return-void
.end method


# virtual methods
.method public addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 11
    .line 12
    :cond_0
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-nez v2, :cond_2

    .line 25
    .line 26
    if-ge v3, v1, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lorg/apache/tools/zip/ZipExtraField;

    .line 35
    .line 36
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v0}, Lorg/apache/tools/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 47
    .line 48
    invoke-virtual {v2, p1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-nez v2, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/Vector;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iput-object v1, v0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/tools/zip/ZipExtraField;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 2
    .line 3
    return v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnixMode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    shr-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0xffff

    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    long-to-int v0, v0

    .line 13
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public removeExtraField(Lorg/apache/tools/zip/ZipShort;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-nez v1, :cond_2

    .line 21
    .line 22
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/apache/tools/zip/ZipExtraField;

    .line 31
    .line 32
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, p1}, Lorg/apache/tools/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public setComprSize(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    .line 2
    .line 3
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/tools/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    return-void
.end method

.method public setExtra([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([B)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 13
    .line 14
    aget-object v2, p1, v0

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 2
    .line 3
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 2
    .line 3
    return-void
.end method

.method public setUnixMode(I)V
    .locals 2

    .line 1
    shl-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0x80

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    or-int/2addr p1, v0

    .line 12
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    :cond_1
    or-int/2addr p1, v1

    .line 21
    int-to-long v0, p1

    .line 22
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 27
    .line 28
    return-void
.end method
