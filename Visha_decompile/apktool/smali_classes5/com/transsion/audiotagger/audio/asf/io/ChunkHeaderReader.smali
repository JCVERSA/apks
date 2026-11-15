.class final Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field private static final INSTANCE:Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;->INSTANCE:Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;->INSTANCE:Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;

    return-object v0
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    new-instance p2, Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    invoke-direct {p2, p1, p3, p4, p0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object p2
.end method
