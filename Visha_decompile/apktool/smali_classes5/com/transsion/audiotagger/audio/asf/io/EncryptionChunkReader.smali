.class Lcom/transsion/audiotagger/audio/asf/io/EncryptionChunkReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/EncryptionChunkReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/EncryptionChunkReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance p1, Lcom/transsion/audiotagger/audio/asf/data/EncryptionChunk;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/EncryptionChunk;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int p0, v0

    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0}, Ljava/io/InputStream;->read([BII)I

    aput-byte v1, v0, p0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int p0, v2

    add-int/lit8 v2, p0, 0x1

    new-array v2, v2, [B

    invoke-virtual {p2, v2, v1, p0}, Ljava/io/InputStream;->read([BII)I

    aput-byte v1, v2, p0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v3

    long-to-int p0, v3

    add-int/lit8 v3, p0, 0x1

    new-array v3, v3, [B

    invoke-virtual {p2, v3, v1, p0}, Ljava/io/InputStream;->read([BII)I

    aput-byte v1, v3, p0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int p0, v4

    add-int/lit8 v4, p0, 0x1

    new-array v4, v4, [B

    invoke-virtual {p2, v4, v1, p0}, Ljava/io/InputStream;->read([BII)I

    aput-byte v1, v4, p0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/EncryptionChunk;->setSecretData(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/EncryptionChunk;->setProtectionType(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/EncryptionChunk;->setKeyID(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/EncryptionChunk;->setLicenseURL(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->setPosition(J)V

    return-object p1
.end method
