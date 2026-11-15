.class public Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dataBuffer:Ljava/nio/ByteBuffer;

.field protected header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object p0
.end method
