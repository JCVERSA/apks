.class public Lcom/transsion/audiotagger/audio/asf/data/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final chunkLength:Ljava/math/BigInteger;

.field protected final guid:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field protected position:J


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    if-eqz p4, :cond_0

    .line 8
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 9
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->guid:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    .line 10
    iput-wide p2, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->position:J

    .line 11
    iput-object p4, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chunkLen must not be null nor negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Position of header can\'t be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GUID must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->guid:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    .line 4
    iput-object p2, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chunkLen must not be null nor negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GUID must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChunckEnd()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->position:J

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunkEnd()J
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->position:J

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunkLength()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->guid:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->position:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-> GUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->guid:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGuidDescription(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  | : Starts at position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  | : Last byte at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide p0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->position:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
