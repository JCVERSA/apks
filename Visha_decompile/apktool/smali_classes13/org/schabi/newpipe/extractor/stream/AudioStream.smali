.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    }
.end annotation


# static fields
.field public static final UNKNOWN_BITRATE:I = -0x1


# instance fields
.field private final audioLocale:Ljava/util/Locale;

.field private final audioTrackId:Ljava/lang/String;

.field private final audioTrackName:Ljava/lang/String;

.field private final audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field private final averageBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 9

    move-object v7, p0

    move-object/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 3
    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    if-eqz v8, :cond_0

    .line 4
    iput-object v8, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 5
    iget v0, v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 6
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->bitrate:I

    .line 8
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initStart:I

    .line 9
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initEnd:I

    .line 10
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexStart:I

    .line 11
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexEnd:I

    .line 12
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    :cond_0
    move v0, p6

    .line 13
    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    move-object/from16 v0, p8

    .line 14
    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 15
    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 16
    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    move-object/from16 v0, p11

    .line 17
    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Ln10;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method public getAverageBitrate()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    return p0
.end method

.method public getBitrate()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->bitrate:I

    return p0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    return-object p0
.end method

.method public getIndexEnd()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexEnd:I

    return p0
.end method

.method public getIndexStart()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexStart:I

    return p0
.end method

.method public getInitEnd()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initEnd:I

    return p0
.end method

.method public getInitStart()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initStart:I

    return p0
.end method

.method public getItag()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    return p0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    return-object p0
.end method
