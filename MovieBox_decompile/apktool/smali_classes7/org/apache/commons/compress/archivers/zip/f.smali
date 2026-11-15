.class public Lorg/apache/commons/compress/archivers/zip/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/t;


# static fields
.field public static final d:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private a:S

.field private b:Z

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    const v1, 0xa11e

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/f;->d:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/f;->c:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/f;->d:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p3, v0, :cond_1

    .line 3
    .line 4
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    and-int/lit16 p2, p1, 0x7fff

    .line 9
    .line 10
    int-to-short p2, p2

    .line 11
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/zip/f;->a:S

    .line 12
    .line 13
    const p2, 0x8000

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, p2

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/f;->b:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "Too short content for ResourceAlignmentExtraField (0xa11e): "

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/f;->parseFromCentralDirectoryData([BII)V

    .line 2
    .line 3
    .line 4
    add-int/lit8 p3, p3, -0x2

    .line 5
    .line 6
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/f;->c:I

    .line 7
    .line 8
    return-void
.end method
