.class public final Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00082\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u0010:\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010,J\u000b\u0010?\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003Jx\u0010A\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001\u00a2\u0006\u0002\u0010BJ\u0013\u0010C\u001a\u00020\u000e2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u00d6\u0003J\t\u0010F\u001a\u00020\u0003H\u00d6\u0001J\t\u0010G\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010/\u001a\u0004\u0008\r\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u0006H"
    }
    d2 = {
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "Ljava/io/Serializable;",
        "type",
        "",
        "updateTimeStamp",
        "",
        "originalFormatTime",
        "",
        "formatTime",
        "audio",
        "Lcom/transsion/baselib/db/audio/AudioBean;",
        "video",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "isLocalFileDelete",
        "",
        "streamVideo",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "ugcVideo",
        "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "<init>",
        "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getUpdateTimeStamp",
        "()Ljava/lang/Long;",
        "setUpdateTimeStamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getOriginalFormatTime",
        "()Ljava/lang/String;",
        "setOriginalFormatTime",
        "(Ljava/lang/String;)V",
        "getFormatTime",
        "setFormatTime",
        "getAudio",
        "()Lcom/transsion/baselib/db/audio/AudioBean;",
        "setAudio",
        "(Lcom/transsion/baselib/db/audio/AudioBean;)V",
        "getVideo",
        "()Lcom/transsion/baselib/db/download/DownloadBean;",
        "setVideo",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "()Ljava/lang/Boolean;",
        "setLocalFileDelete",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getStreamVideo",
        "()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "setStreamVideo",
        "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V",
        "getUgcVideo",
        "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "setUgcVideo",
        "(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "Downloader_psRelease"
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
.field private audio:Lcom/transsion/baselib/db/audio/AudioBean;

.field private formatTime:Ljava/lang/String;

.field private isLocalFileDelete:Ljava/lang/Boolean;

.field private originalFormatTime:Ljava/lang/String;

.field private streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

.field private type:I

.field private ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

.field private updateTimeStamp:Ljava/lang/Long;

.field private video:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 4
    iput-object p3, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 7
    iput-object p6, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    iput-object p7, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 9
    iput-object p8, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 10
    iput-object p9, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 12
    invoke-direct/range {v2 .. v11}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;ILjava/lang/Object;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p10

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget v2, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    iget-object v6, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    iget-object v7, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v7, p6

    .line 52
    .line 53
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 54
    .line 55
    if-eqz v8, :cond_6

    .line 56
    .line 57
    iget-object v8, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 58
    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move-object/from16 v8, p7

    .line 61
    .line 62
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 63
    .line 64
    if-eqz v9, :cond_7

    .line 65
    .line 66
    iget-object v9, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 67
    .line 68
    goto :goto_7

    .line 69
    :cond_7
    move-object/from16 v9, p8

    .line 70
    .line 71
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    iget-object v1, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 76
    .line 77
    goto :goto_8

    .line 78
    :cond_8
    move-object/from16 v1, p9

    .line 79
    .line 80
    :goto_8
    move p1, v2

    .line 81
    move-object p2, v3

    .line 82
    move-object p3, v4

    .line 83
    move-object p4, v5

    .line 84
    move-object p5, v6

    .line 85
    move-object/from16 p6, v7

    .line 86
    .line 87
    move-object/from16 p7, v8

    .line 88
    .line 89
    move-object/from16 p8, v9

    .line 90
    .line 91
    move-object/from16 p9, v1

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p9}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->copy(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;
    .locals 11

    .line 1
    new-instance v10, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

    .line 19
    .line 20
    .line 21
    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 100
    .line 101
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    return v0
.end method

.method public final getAudio()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFormatTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOriginalFormatTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUgcVideo()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdateTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move v1, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_2
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    move v1, v2

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_3
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    move v1, v2

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :goto_4
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    .line 75
    move v1, v2

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_5
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    move v1, v2

    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_6
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 98
    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_7
    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :goto_7
    add-int/2addr v0, v2

    .line 107
    return v0
.end method

.method public final isLocalFileDelete()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAudio(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setFormatTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalFileDelete(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setOriginalFormatTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStreamVideo(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUgcVideo(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setUpdateTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->type:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->updateTimeStamp:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->originalFormatTime:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->formatTime:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->audio:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->video:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 18
    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v10, "HistoricalPlayRecordBean(type="

    .line 25
    .line 26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", updateTimeStamp="

    .line 33
    .line 34
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", originalFormatTime="

    .line 41
    .line 42
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", formatTime="

    .line 49
    .line 50
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", audio="

    .line 57
    .line 58
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", video="

    .line 65
    .line 66
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", isLocalFileDelete="

    .line 73
    .line 74
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", streamVideo="

    .line 81
    .line 82
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", ugcVideo="

    .line 89
    .line 90
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ")"

    .line 97
    .line 98
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
