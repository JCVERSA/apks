.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    }
.end annotation


# static fields
.field public static final RESOLUTION_UNKNOWN:Ljava/lang/String; = ""


# instance fields
.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final isVideoOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;

.field public final resolution:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 9

    move-object v7, p0

    move-object/from16 v8, p9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 3
    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    if-eqz v8, :cond_0

    .line 4
    iput-object v8, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 5
    iget v0, v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    .line 6
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->bitrate:I

    .line 7
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initStart:I

    .line 8
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initEnd:I

    .line 9
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexStart:I

    .line 10
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexEnd:I

    .line 11
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->height:I

    .line 13
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->width:I

    .line 14
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getFps()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->fps:I

    :cond_0
    move-object v0, p6

    .line 16
    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    move/from16 v0, p7

    .line 17
    iput-boolean v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lj7c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBitrate()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->bitrate:I

    return p0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    return-object p0
.end method

.method public getFps()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->fps:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->height:I

    return p0
.end method

.method public getIndexEnd()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexEnd:I

    return p0
.end method

.method public getIndexStart()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexStart:I

    return p0
.end method

.method public getInitEnd()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initEnd:I

    return p0
.end method

.method public getInitStart()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initStart:I

    return p0
.end method

.method public getItag()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    return p0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    return-object p0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->width:I

    return p0
.end method

.method public isVideoOnly()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return p0
.end method
