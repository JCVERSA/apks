.class public Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;
.super Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader<",
        "Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    .line 3
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 4
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 5
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;-><init>(JLjava/math/BigInteger;)V

    return-object p0
.end method

.method public bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;

    move-result-object p0

    return-object p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public bridge synthetic read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    return-object p0
.end method
