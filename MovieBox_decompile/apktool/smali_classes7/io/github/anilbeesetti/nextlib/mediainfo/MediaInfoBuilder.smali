.class public final Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJi\u0010\u0019\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJe\u0010\u001f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006H\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J9\u0010!\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008!\u0010\"J1\u0010%\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008%\u0010&J\u0018\u0010(\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u000cH\u0083 \u00a2\u0006\u0004\u0008(\u0010)J\u0018\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0006H\u0083 \u00a2\u0006\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00104R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020<0;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001a\u0010B\u001a\u0008\u0012\u0004\u0012\u00020@0;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010>R\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020C0;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010>\u00a8\u0006F"
    }
    d2 = {
        "Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;",
        "",
        "<init>",
        "()V",
        "",
        "onError",
        "",
        "fileFormatName",
        "",
        "duration",
        "onMediaInfoFound",
        "(Ljava/lang/String;J)V",
        "",
        "index",
        "title",
        "codecName",
        "language",
        "disposition",
        "bitRate",
        "",
        "frameRate",
        "frameWidth",
        "frameHeight",
        "rotation",
        "frameLoaderContext",
        "onVideoStreamFound",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDIIIJ)V",
        "sampleFormat",
        "sampleRate",
        "channels",
        "channelLayout",
        "onAudioStreamFound",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IILjava/lang/String;)V",
        "onSubtitleStreamFound",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "start",
        "end",
        "onChapterFound",
        "(ILjava/lang/String;JJ)V",
        "fileDescriptor",
        "nativeCreateFromFD",
        "(I)V",
        "filePath",
        "nativeCreateFromPath",
        "(Ljava/lang/String;)V",
        "",
        "a",
        "Z",
        "hasError",
        "b",
        "Ljava/lang/String;",
        "c",
        "Ljava/lang/Long;",
        "d",
        "frameLoaderContextHandle",
        "Lvx/d;",
        "e",
        "Lvx/d;",
        "videoStream",
        "",
        "Lvx/a;",
        "f",
        "Ljava/util/List;",
        "audioStreams",
        "Lvx/c;",
        "g",
        "subtitleStreams",
        "Lvx/b;",
        "h",
        "chapters",
        "mediainfo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Lvx/d;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->f:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->g:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->h:Ljava/util/List;

    .line 24
    .line 25
    const-string v0, "mediainfo"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final native nativeCreateFromFD(I)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeCreateFromPath(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final onAudioStreamFound(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IILjava/lang/String;)V
    .locals 15
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->f:Ljava/util/List;

    .line 3
    .line 4
    new-instance v14, Lvx/a;

    .line 5
    .line 6
    move-object v2, v14

    .line 7
    move/from16 v3, p1

    .line 8
    .line 9
    move-object/from16 v4, p2

    .line 10
    .line 11
    move-object/from16 v5, p3

    .line 12
    .line 13
    move-object/from16 v6, p4

    .line 14
    .line 15
    move/from16 v7, p5

    .line 16
    .line 17
    move-wide/from16 v8, p6

    .line 18
    .line 19
    move-object/from16 v10, p8

    .line 20
    .line 21
    move/from16 v11, p9

    .line 22
    .line 23
    move/from16 v12, p10

    .line 24
    .line 25
    move-object/from16 v13, p11

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Lvx/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final onChapterFound(ILjava/lang/String;JJ)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->h:Ljava/util/List;

    .line 2
    .line 3
    new-instance v8, Lvx/b;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move v2, p1

    .line 7
    move-wide v3, p3

    .line 8
    move-wide v5, p5

    .line 9
    move-object v7, p2

    .line 10
    invoke-direct/range {v1 .. v7}, Lvx/b;-><init>(IJJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final onError()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method private final onMediaInfoFound(Ljava/lang/String;J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->c:Ljava/lang/Long;

    .line 8
    .line 9
    return-void
.end method

.method private final onSubtitleStreamFound(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->g:Ljava/util/List;

    .line 2
    .line 3
    new-instance v7, Lvx/c;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-direct/range {v1 .. v6}, Lvx/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final onVideoStreamFound(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDIIIJ)V
    .locals 15
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->e:Lvx/d;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lvx/d;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v6, p4

    .line 16
    .line 17
    move/from16 v7, p5

    .line 18
    .line 19
    move-wide/from16 v8, p6

    .line 20
    .line 21
    move-wide/from16 v10, p8

    .line 22
    .line 23
    move/from16 v12, p10

    .line 24
    .line 25
    move/from16 v13, p11

    .line 26
    .line 27
    move/from16 v14, p12

    .line 28
    .line 29
    invoke-direct/range {v2 .. v14}, Lvx/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDIII)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->e:Lvx/d;

    .line 33
    .line 34
    const-wide/16 v1, -0x1

    .line 35
    .line 36
    cmp-long v1, p13, v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lio/github/anilbeesetti/nextlib/mediainfo/MediaInfoBuilder;->d:Ljava/lang/Long;

    .line 45
    .line 46
    :cond_0
    return-void
.end method
