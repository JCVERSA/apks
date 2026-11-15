.class public abstract Lcom/aliyun/player/AVPBase;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;,
        Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;,
        Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerSnapShotListener;,
        Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerSeiDataListener;,
        Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;,
        Lcom/aliyun/player/AVPBase$InnerSeekEndListener;,
        Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;,
        Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;,
        Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerRenderListener;,
        Lcom/aliyun/player/AVPBase$InnerCompletionListener;,
        Lcom/aliyun/player/AVPBase$InnerErrorListener;,
        Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;,
        Lcom/aliyun/player/AVPBase$InnerInfoListener;,
        Lcom/aliyun/player/AVPBase$InnerPrepareListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AVPBase"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field private mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

.field private mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field private mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

.field private mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

.field private mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field protected mTraceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 14
    .line 15
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerPrepareListener;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerPrepareListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 23
    .line 24
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerInfoListener;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerInfoListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 32
    .line 33
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 41
    .line 42
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerErrorListener;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerErrorListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 50
    .line 51
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerCompletionListener;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerCompletionListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 59
    .line 60
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerRenderListener;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerRenderListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 68
    .line 69
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 77
    .line 78
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 86
    .line 87
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 95
    .line 96
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSeekEndListener;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSeekEndListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 104
    .line 105
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 113
    .line 114
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSeiDataListener;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSeiDataListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 122
    .line 123
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 131
    .line 132
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSnapShotListener;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSnapShotListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 140
    .line 141
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 144
    .line 145
    .line 146
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 149
    .line 150
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 158
    .line 159
    new-instance v0, Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    .line 165
    .line 166
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    iput-object p2, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 175
    .line 176
    iget-object p2, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->bindListeners()V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onPrepared()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onLoadingEnd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onSeekComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSubtitleExtAdded(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/AVPBase;IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->onSubtitleShow(IJLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/aliyun/player/AVPBase;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->onSubtitleHide(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSubtitleHeader(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/aliyun/player/AVPBase;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSeiData(I[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lcom/aliyun/player/AVPBase;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->onSnapShot(Landroid/graphics/Bitmap;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/AVPBase;[Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2000(Lcom/aliyun/player/AVPBase;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/aliyun/player/AVPBase;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->onVideoRendered(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/aliyun/player/AVPBase;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onEventParam(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onCompletion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onVideoRenderingStart()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/player/AVPBase;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onVideoSizeChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onLoadingBegin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/player/AVPBase;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onLoadingProgress(IF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private bindListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnTrackInfoGetListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnTrackSelectRetListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private clearListeners()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 25
    .line 26
    return-void
.end method

.method private onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method private onCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnCompletionListener;->onCompletion()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onEventParam(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnReportEventListener;->onEventParam(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraMsg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private onLoadingBegin()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingBegin()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onLoadingEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingEnd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onLoadingProgress(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingProgress(IF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onPrepared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnPreparedListener;->onPrepared()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSeekComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;->onSeekComplete()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSeiData(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSeiDataListener;->onSeiData(I[B)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSnapShot(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer$OnSnapShotListener;->onSnapShot(Landroid/graphics/Bitmap;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnStateChangedListener;->onStateChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleExtAdded(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSubtitleHeader(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHeader(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSubtitleHide(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHide(IJ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onSubtitleShow(IJLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleShow(IJLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnTrackReadyListener;->onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private onVideoRendered(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;->onVideoRendered(JJ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onVideoRenderingStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnRenderingStartListener;->onRenderingStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onVideoSizeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private pauseInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private startInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->addExtSubtitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearScreen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->clearScreen()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected abstract createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
.end method

.method public currentTrack(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public currentTrack(Lcom/aliyun/player/nativeclass/TrackInfo$Type;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->enableHardwareDecoder(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNativeContextAddr()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getNativeContext()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getPlayerName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPropertyString(Lcom/aliyun/player/IPlayer$PropertyKey;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$PropertyKey;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getPropertyString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoRotation()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVolume()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isAutoPlay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isLoop()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isMuted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->pauseInner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->prepare()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public redraw()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->release()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->clearListeners()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->reload()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/IPlayer$SeekMode;->Inaccurate:Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/player/AVPBase;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    return-void
.end method

.method public seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p3}, Lcom/aliyun/player/IPlayer$SeekMode;->getValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->seekTo(JI)V

    return-void
.end method

.method public selectExtSubtitle(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectExtSubtitle(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectTrack(I)V

    return-void
.end method

.method public selectTrack(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectTrack(IZ)V

    return-void
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sendCustomEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setAutoPlay(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/aliyun/player/nativeclass/CacheConfig;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/aliyun/player/nativeclass/CacheConfig;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDefaultBandWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDefaultBandWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->setSurface(Landroid/view/Surface;)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->setSurface(Landroid/view/Surface;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFastStart(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFastStart(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFilterConfig(Lcom/aliyun/player/FilterConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFilterInvalid(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setLoop(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMaxAccurateSeekDelta(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMute(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTrackReadyListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setPreferPlayerName(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSpeed(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStreamDelayTime(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setStreamDelayTime(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurface(Landroid/view/Surface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVideoBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVideoBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoTag([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVideoTag([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVolume(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public snapshot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->snapShot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->startInner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->stopInner()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->onStatusChanged(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected stopInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->surfaceChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
