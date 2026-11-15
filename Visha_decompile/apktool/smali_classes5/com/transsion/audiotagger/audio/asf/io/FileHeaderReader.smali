.class public Lcom/transsion/audiotagger/audio/asf/io/FileHeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_FILE:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/FileHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

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

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/FileHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v8

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v12

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v14

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;

    move-object/from16 p0, v0

    invoke-direct/range {v0 .. v15}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V

    move-object/from16 v2, p0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->setPosition(J)V

    return-object v2
.end method
