.class public Lorg/apache/tools/zip/UnrecognizedExtraField;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lorg/apache/tools/zip/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->getLocalFileDataData()[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lorg/apache/tools/zip/ZipShort;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    invoke-direct {v1, v0}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->headerId:Lorg/apache/tools/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2

    .line 1
    new-array v0, p3, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    .line 2
    .line 3
    return-void
.end method

.method public setHeaderId(Lorg/apache/tools/zip/ZipShort;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->headerId:Lorg/apache/tools/zip/ZipShort;

    .line 2
    .line 3
    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    .line 2
    .line 3
    return-void
.end method
