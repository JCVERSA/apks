.class public Lcom/transsion/liblan/TranMedia;
.super Lcom/transsion/liblan/LANObject;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranMedia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/LANObject<",
        "Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;",
        ">;",
        "Lcom/transsion/liblan/interfaces/ITranMedia;"
    }
.end annotation


# static fields
.field private static final PARSE_STATUS_INIT:I = 0x0

.field private static final PARSE_STATUS_PARSED:I = 0x2

.field private static final PARSE_STATUS_PARSING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LibLAN/TranMedia"


# instance fields
.field private mCodecOptionSet:Z

.field private mDuration:J

.field private mFileCachingSet:Z

.field private final mNativeMetas:[Ljava/lang/String;

.field private mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

.field private mNetworkCachingSet:Z

.field private mParseStatus:I

.field private mState:I

.field private mSubItems:Lcom/transsion/liblan/TranMediaList;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/content/res/AssetFileDescriptor;)V
    .locals 9

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    .line 45
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    const/16 v2, 0x19

    .line 47
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    const-wide/16 v2, -0x1

    .line 49
    iput-wide v2, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    .line 51
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    .line 52
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    .line 53
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    .line 54
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    .line 55
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 56
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 57
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/transsion/liblan/TranMedia;->nativeNewFromFdWithOffsetLength(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;JJ)V

    .line 58
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/liblan/util/LANUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)V
    .locals 4

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    .line 17
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    const/16 v2, 0x19

    .line 19
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    const-wide/16 v2, -0x1

    .line 21
    iput-wide v2, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    .line 23
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    .line 24
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    .line 25
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    .line 26
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    .line 27
    invoke-static {p2}, Lcom/transsion/liblan/util/LANUtil;->encodeLANUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/liblan/TranMedia;->nativeNewFromLocation(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)V
    .locals 4

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    .line 31
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    const/16 v2, 0x19

    .line 33
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    const-wide/16 v2, -0x1

    .line 35
    iput-wide v2, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    .line 37
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    .line 38
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    .line 39
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    .line 40
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMedia;->nativeNewFromFd(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)V

    .line 42
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/liblan/util/LANUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    const/16 v2, 0x19

    .line 5
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    .line 9
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    .line 10
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    .line 11
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    .line 12
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMedia;->nativeNewFromPath(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/liblan/util/LANUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranMediaList;I)V
    .locals 4

    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLANObject;)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    .line 61
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    const/16 v2, 0x19

    .line 63
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    const-wide/16 v2, -0x1

    .line 65
    iput-wide v2, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    .line 67
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    .line 68
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    .line 69
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    .line 70
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranMediaList;->isBeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMedia;->nativeNewFromMediaList(Lcom/transsion/liblan/interfaces/ITranMediaList;I)V

    .line 74
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/liblan/util/LANUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    return-void

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MediaList should be locked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MediaList is null or released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createAudioTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;II)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 13

    new-instance v12, Lcom/transsion/liblan/interfaces/ITranMedia$AudioTrack;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/transsion/liblan/interfaces/ITranMedia$AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-object v12
.end method

.method private static createSlaveFromNative(IILjava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia$Slave;
    .locals 1

    new-instance v0, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method private static createStatsFromNative(IFIFIIIIIIIIIIF)Lcom/transsion/liblan/interfaces/ITranMedia$Stats;
    .locals 17

    new-instance v16, Lcom/transsion/liblan/interfaces/ITranMedia$Stats;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/transsion/liblan/interfaces/ITranMedia$Stats;-><init>(IFIFIIIIIIIIIIF)V

    return-object v16
.end method

.method private static createSubtitleTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 12

    new-instance v11, Lcom/transsion/liblan/interfaces/ITranMedia$SubtitleTrack;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/transsion/liblan/interfaces/ITranMedia$SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method private static createUnknownTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 11

    new-instance v10, Lcom/transsion/liblan/interfaces/ITranMedia$UnknownTrack;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/transsion/liblan/interfaces/ITranMedia$UnknownTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method private static createVideoTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;IIIIIIII)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    new-instance v18, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;IIIIIIII)V

    return-object v18
.end method

.method private static getMediaCodecModule()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_LOLLI_POP_OR_LATER:Z

    if-eqz v0, :cond_0

    const-string v0, "mediacodec_ndk"

    goto :goto_0

    :cond_0
    const-string v0, "mediacodec_jni"

    :goto_0
    return-object v0
.end method

.method private getTracks()[Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMedia;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetTracks()[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    move-result-object v0

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native nativeAddOption(Ljava/lang/String;)V
.end method

.method private native nativeAddSlave(IILjava/lang/String;)V
.end method

.method private native nativeClearSlaves()V
.end method

.method private native nativeGetDuration()J
.end method

.method private native nativeGetMeta(I)Ljava/lang/String;
.end method

.method private native nativeGetMrl()Ljava/lang/String;
.end method

.method private native nativeGetSlaves()[Lcom/transsion/liblan/interfaces/ITranMedia$Slave;
.end method

.method private native nativeGetState()I
.end method

.method private native nativeGetStats()Lcom/transsion/liblan/interfaces/ITranMedia$Stats;
.end method

.method private native nativeGetTracks()[Lcom/transsion/liblan/interfaces/ITranMedia$Track;
.end method

.method private native nativeGetType()I
.end method

.method private native nativeNewFromFd(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)V
.end method

.method private native nativeNewFromFdWithOffsetLength(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;JJ)V
.end method

.method private native nativeNewFromLocation(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
.end method

.method private native nativeNewFromMediaList(Lcom/transsion/liblan/interfaces/ITranMediaList;I)V
.end method

.method private native nativeNewFromPath(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
.end method

.method private native nativeParse(I)Z
.end method

.method private native nativeParseAsync(II)Z
.end method

.method private native nativeRelease()V
.end method

.method private declared-synchronized postParse()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    and-int/lit8 v0, v0, -0x2

    or-int/lit8 v0, v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeTracks:[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public addOption(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, ":codec="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    if-nez v0, :cond_1

    const-string v0, ":network-caching="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    if-nez v0, :cond_2

    const-string v0, ":file-caching="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMedia;->nativeAddOption(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addSlave(Lcom/transsion/liblan/interfaces/ITranMedia$Slave;)V
    .locals 2

    iget v0, p1, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;->type:I

    iget v1, p1, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;->priority:I

    iget-object p1, p1, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;->uri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/liblan/TranMedia;->nativeAddSlave(IILjava/lang/String;)V

    return-void
.end method

.method public clearSlaves()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeClearSlaves()V

    return-void
.end method

.method public getDuration()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMedia;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetDuration()J

    move-result-wide v0

    monitor-enter p0

    :try_start_1
    iput-wide v0, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    monitor-exit p0

    return-wide v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic getInstance()J
    .locals 2

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMeta(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/liblan/TranMedia;->getMeta(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMeta(IZ)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    aget-object p2, p2, p1

    if-eqz p2, :cond_1

    .line 4
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMedia;->isReleased()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    monitor-exit p0

    return-object v0

    .line 7
    :cond_2
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMedia;->nativeGetMeta(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 11
    monitor-exit p0

    return-object p2

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getSlaves()[Lcom/transsion/liblan/interfaces/ITranMedia$Slave;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetSlaves()[Lcom/transsion/liblan/interfaces/ITranMedia$Slave;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMedia;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 p0, 0x7

    return p0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetState()I

    move-result v0

    monitor-enter p0

    :try_start_1
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getStats()Lcom/transsion/liblan/interfaces/ITranMedia$Stats;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetStats()Lcom/transsion/liblan/interfaces/ITranMedia$Stats;

    move-result-object p0

    return-object p0
.end method

.method public getTrack(I)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->getTracks()[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    move-result-object p0

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrackCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->getTracks()[Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMedia;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeGetType()I

    move-result v0

    monitor-enter p0

    :try_start_1
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mType:I

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isParsed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_3

    const/4 p4, 0x5

    if-eq p1, p4, :cond_2

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->postParse()V

    .line 3
    new-instance p4, Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-wide/16 p2, -0x1

    .line 4
    :try_start_1
    iput-wide p2, p0, Lcom/transsion/liblan/TranMedia;->mDuration:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/transsion/liblan/TranMedia;->mState:I

    .line 6
    :goto_0
    new-instance p2, Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;

    invoke-direct {p2, p1}, Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_3
    long-to-int p4, p2

    if-ltz p4, :cond_4

    const/16 p5, 0x19

    if-ge p4, p5, :cond_4

    .line 7
    :try_start_2
    iget-object p5, p0, Lcom/transsion/liblan/TranMedia;->mNativeMetas:[Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p6, p5, p4

    .line 8
    :cond_4
    new-instance p4, Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;-><init>(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p4

    .line 9
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/TranMedia;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNativeItem()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaList;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->nativeRelease()V

    return-void
.end method

.method public parse()Z
    .locals 1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMedia;->parse(I)Z

    move-result p0

    return p0
.end method

.method public parse(I)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    or-int/2addr v0, v2

    .line 3
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move v0, v3

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMedia;->nativeParse(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/transsion/liblan/TranMedia;->postParse()V

    return v2

    :cond_1
    return v3

    .line 7
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public parseAsync()Z
    .locals 1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMedia;->parseAsync(I)Z

    move-result p0

    return p0
.end method

.method public parseAsync(I)Z
    .locals 1

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/transsion/liblan/TranMedia;->parseAsync(II)Z

    move-result p0

    return p0
.end method

.method public parseAsync(II)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    or-int/2addr v0, v2

    .line 3
    iput v0, p0, Lcom/transsion/liblan/TranMedia;->mParseStatus:I

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v0, v3

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMedia;->nativeParseAsync(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 6
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEventListener(Lcom/transsion/liblan/interfaces/ITranMedia$EventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;)V

    return-void
.end method

.method public setHWDecoderEnabled(ZZ)V
    .locals 2

    invoke-static {}, Lcom/transsion/liblan/TranLibLAN;->majorLibVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/liblan/util/HWDecoderUtil;->getDecoderFromDevice()Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->NONE:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    :goto_0
    sget-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->UNKNOWN:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    :cond_1
    sget-object v1, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->NONE:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    if-eq p1, v1, :cond_9

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMedia;->mFileCachingSet:Z

    if-nez v0, :cond_3

    const-string v0, ":file-caching=1500"

    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMedia;->addOption(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMedia;->mNetworkCachingSet:Z

    if-nez v0, :cond_4

    const-string v0, ":network-caching=1500"

    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMedia;->addOption(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":codec="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    if-ne p1, v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/transsion/liblan/TranMedia;->getMediaCodecModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p2, :cond_8

    sget-object p2, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->OMX:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    if-eq p1, p2, :cond_7

    sget-object p2, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    if-ne p1, p2, :cond_8

    :cond_7
    const-string p1, "iomx,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string p1, "all"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMedia;->addOption(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    :goto_1
    const-string p1, ":codec=all"

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMedia;->addOption(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_b

    const-string p1, ":no-hw-dec"

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMedia;->addOption(Ljava/lang/String;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public setPlayerDefaultOptions()V
    .locals 2

    invoke-static {}, Lcom/transsion/liblan/TranLibLAN;->majorLibVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/liblan/TranMedia;->mCodecOptionSet:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/liblan/TranMedia;->setHWDecoderEnabled(ZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "file"

    iget-object v1, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":demux=dvdnav,any"

    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMedia;->addOption(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public subItems()Lcom/transsion/liblan/TranMediaList;
    .locals 1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->retain()Z

    .line 5
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Lcom/transsion/liblan/TranMediaList;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/TranMediaList;-><init>(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    iput-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    .line 10
    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->retain()Z

    .line 11
    iget-object v0, p0, Lcom/transsion/liblan/TranMedia;->mSubItems:Lcom/transsion/liblan/TranMediaList;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 13
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic subItems()Lcom/transsion/liblan/interfaces/ITranMediaList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMedia;->subItems()Lcom/transsion/liblan/TranMediaList;

    move-result-object p0

    return-object p0
.end method
