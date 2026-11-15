.class public Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketStartAndLength"
.end annotation


# instance fields
.field private length:Ljava/lang/Integer;

.field private startPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getStartPosition()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setLength(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NextPkt(start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "),"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
