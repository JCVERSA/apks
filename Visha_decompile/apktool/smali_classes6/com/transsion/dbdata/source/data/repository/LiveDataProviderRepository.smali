.class public final Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\nJ!\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00062\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J3\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00070\u00062\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ3\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u00070\u00062\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ1\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001f\u0010 J1\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008!\u0010\"J)\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0\u00070\u0006\u00a2\u0006\u0004\u0008&\u0010\'J\u0019\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u00070\u0006\u00a2\u0006\u0004\u0008)\u0010\'R\u0014\u0010+\u001a\u00020*8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001b\u00107\u001a\u0002038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010/\u001a\u0004\u00085\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010/\u001a\u0004\u0008:\u0010;R\u001b\u0010A\u001a\u00020=8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010/\u001a\u0004\u0008?\u0010@R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010/\u001a\u0004\u0008D\u0010ER\u001b\u0010K\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010/\u001a\u0004\u0008I\u0010JR#\u0010Q\u001a\n M*\u0004\u0018\u00010L0L8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010/\u001a\u0004\u0008O\u0010PR\u001b\u0010V\u001a\u00020R8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010/\u001a\u0004\u0008T\u0010U\u00a8\u0006W"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;",
        "",
        "<init>",
        "()V",
        "",
        "limitCount",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/transsion/dbdata/database/ConvertAudio;",
        "observeConvertAudio",
        "(I)Landroidx/lifecycle/LiveData;",
        "Lcom/transsion/dbdata/database/ConvertingVideo;",
        "observeVideoConverting",
        "",
        "fromVideo",
        "Lcom/transsion/dbdata/database/MediaPlayCount;",
        "observePlayHistory",
        "(Z)Landroidx/lifecycle/LiveData;",
        "createType",
        "",
        "playListId",
        "Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "observePlayListFolder",
        "(IJ)Landroidx/lifecycle/LiveData;",
        "excludeFavorite",
        "observePlayListFolderSet",
        "(IZI)Landroidx/lifecycle/LiveData;",
        "Lcom/transsion/dbdata/database/PlayListItem;",
        "observePlayListFolderSetNonCount",
        "excludeFavorites",
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "observePlayListElements",
        "(ZZI)Landroidx/lifecycle/LiveData;",
        "observePlayListElementsById",
        "(ZJI)Landroidx/lifecycle/LiveData;",
        "observeFavoritePlayListElements",
        "(ZI)Landroidx/lifecycle/LiveData;",
        "Lcom/transsion/dbdata/beans/SubtitleHistory;",
        "observeDownloadSubtitle",
        "()Landroidx/lifecycle/LiveData;",
        "Lqe6;",
        "observeAllMissingData",
        "",
        "TAG",
        "Ljava/lang/String;",
        "Lgi1;",
        "mConvertAudioDao$delegate",
        "Lyi5;",
        "getMConvertAudioDao",
        "()Lgi1;",
        "mConvertAudioDao",
        "Lqj1;",
        "mConvertingVideoDao$delegate",
        "getMConvertingVideoDao",
        "()Lqj1;",
        "mConvertingVideoDao",
        "Lb68;",
        "mPlayListDao$delegate",
        "getMPlayListDao",
        "()Lb68;",
        "mPlayListDao",
        "Lf68;",
        "mPlayListMediaDao$delegate",
        "getMPlayListMediaDao",
        "()Lf68;",
        "mPlayListMediaDao",
        "Lht;",
        "mAudioPlayHistoryDao$delegate",
        "getMAudioPlayHistoryDao",
        "()Lht;",
        "mAudioPlayHistoryDao",
        "Lg5c;",
        "mVideoPlayHistoryDao$delegate",
        "getMVideoPlayHistoryDao",
        "()Lg5c;",
        "mVideoPlayHistoryDao",
        "Lw4a;",
        "kotlin.jvm.PlatformType",
        "mSubtitleDownloadHistoryDao$delegate",
        "getMSubtitleDownloadHistoryDao",
        "()Lw4a;",
        "mSubtitleDownloadHistoryDao",
        "Loe6;",
        "mMediaDataMissingItemDao$delegate",
        "getMMediaDataMissingItemDao",
        "()Loe6;",
        "mMediaDataMissingItemDao",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

.field private static final TAG:Ljava/lang/String; = "LiveDataProviderRepository"

.field private static final mAudioPlayHistoryDao$delegate:Lyi5;

.field private static final mConvertAudioDao$delegate:Lyi5;

.field private static final mConvertingVideoDao$delegate:Lyi5;

.field private static final mMediaDataMissingItemDao$delegate:Lyi5;

.field private static final mPlayListDao$delegate:Lyi5;

.field private static final mPlayListMediaDao$delegate:Lyi5;

.field private static final mSubtitleDownloadHistoryDao$delegate:Lyi5;

.field private static final mVideoPlayHistoryDao$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    new-instance v0, Lvm5;

    invoke-direct {v0}, Lvm5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mConvertAudioDao$delegate:Lyi5;

    new-instance v0, Lwm5;

    invoke-direct {v0}, Lwm5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mConvertingVideoDao$delegate:Lyi5;

    new-instance v0, Lxm5;

    invoke-direct {v0}, Lxm5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mPlayListDao$delegate:Lyi5;

    new-instance v0, Lym5;

    invoke-direct {v0}, Lym5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mPlayListMediaDao$delegate:Lyi5;

    new-instance v0, Lzm5;

    invoke-direct {v0}, Lzm5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mAudioPlayHistoryDao$delegate:Lyi5;

    new-instance v0, Lan5;

    invoke-direct {v0}, Lan5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mVideoPlayHistoryDao$delegate:Lyi5;

    new-instance v0, Lbn5;

    invoke-direct {v0}, Lbn5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mSubtitleDownloadHistoryDao$delegate:Lyi5;

    new-instance v0, Lcn5;

    invoke-direct {v0}, Lcn5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mMediaDataMissingItemDao$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lb68;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mPlayListDao_delegate$lambda$2()Lb68;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lqj1;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mConvertingVideoDao_delegate$lambda$1()Lqj1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lht;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mAudioPlayHistoryDao_delegate$lambda$4()Lht;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observeAllMissingData$lambda$14(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Lgi1;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mConvertAudioDao_delegate$lambda$0()Lgi1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lw4a;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mSubtitleDownloadHistoryDao_delegate$lambda$6()Lw4a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Loe6;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mMediaDataMissingItemDao_delegate$lambda$7()Loe6;

    move-result-object v0

    return-object v0
.end method

.method private final getMAudioPlayHistoryDao()Lht;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mAudioPlayHistoryDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lht;

    return-object p0
.end method

.method private final getMConvertAudioDao()Lgi1;
    .locals 1

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mConvertAudioDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgi1;

    return-object p0
.end method

.method private final getMConvertingVideoDao()Lqj1;
    .locals 1

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mConvertingVideoDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lqj1;

    return-object p0
.end method

.method private final getMMediaDataMissingItemDao()Loe6;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mMediaDataMissingItemDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loe6;

    return-object p0
.end method

.method private final getMPlayListDao()Lb68;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mPlayListDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb68;

    return-object p0
.end method

.method private final getMPlayListMediaDao()Lf68;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mPlayListMediaDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf68;

    return-object p0
.end method

.method private final getMSubtitleDownloadHistoryDao()Lw4a;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mSubtitleDownloadHistoryDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw4a;

    return-object p0
.end method

.method private final getMVideoPlayHistoryDao()Lg5c;
    .locals 1

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mVideoPlayHistoryDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lg5c;

    return-object p0
.end method

.method public static synthetic h()Lg5c;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mVideoPlayHistoryDao_delegate$lambda$5()Lg5c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Lf68;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->mPlayListMediaDao_delegate$lambda$3()Lf68;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioPlayHistoryDao_delegate$lambda$4()Lht;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->f()Lht;

    move-result-object v0

    return-object v0
.end method

.method private static final mConvertAudioDao_delegate$lambda$0()Lgi1;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b()Lgi1;

    move-result-object v0

    return-object v0
.end method

.method private static final mConvertingVideoDao_delegate$lambda$1()Lqj1;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->a()Lqj1;

    move-result-object v0

    return-object v0
.end method

.method private static final mMediaDataMissingItemDao_delegate$lambda$7()Loe6;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->h()Loe6;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlayListDao_delegate$lambda$2()Lb68;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlayListMediaDao_delegate$lambda$3()Lf68;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->k()Lf68;

    move-result-object v0

    return-object v0
.end method

.method private static final mSubtitleDownloadHistoryDao_delegate$lambda$6()Lw4a;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i()Lw4a;

    move-result-object v0

    return-object v0
.end method

.method private static final mVideoPlayHistoryDao_delegate$lambda$5()Lg5c;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    return-object v0
.end method

.method private static final observeAllMissingData$lambda$14(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;
    .locals 3

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    sget-object v2, Lqe6;->m:Lqe6$a;

    invoke-virtual {v2, v1}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final observeAllMissingData()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lqe6;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0}, Loe6;->getAllMissingDataLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance v1, Lum5;

    invoke-direct {v1, v0}, Lum5;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    new-instance v2, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository$sam$androidx_lifecycle_Observer$0;-><init>(Le74;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method

.method public final observeConvertAudio(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertAudio;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeConvertAudio,limitCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProviderRepository"

    invoke-static {v1, v0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMConvertAudioDao()Lgi1;

    move-result-object p0

    invoke-interface {p0, p1}, Lgi1;->getAll(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    const-string p1, "getAll(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final observeDownloadSubtitle()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;>;"
        }
    .end annotation

    const-string v0, "LiveDataProviderRepository"

    const-string v1, "observeDownloadSubtitle--->"

    invoke-static {v0, v1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMSubtitleDownloadHistoryDao()Lw4a;

    move-result-object p0

    invoke-interface {p0}, Lw4a;->queryAllDownLoadSubtitleLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    const-string v0, "queryAllDownLoadSubtitleLiveData(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final observeFavoritePlayListElements(ZI)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "LiveDataProviderRepository"

    if-eqz p1, :cond_0

    const-string p1, "observeFavoritePlayListElements from video"

    invoke-static {v0, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p2}, Lf68;->c(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "observeFavoritePlayListElements from audio"

    invoke-static {v0, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p2}, Lf68;->a(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final observePlayHistory(Z)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaPlayCount;",
            ">;>;"
        }
    .end annotation

    const-string v0, "LiveDataProviderRepository"

    if-eqz p1, :cond_0

    const-string p1, "observePlayHistory from video"

    invoke-static {v0, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMVideoPlayHistoryDao()Lg5c;

    move-result-object p0

    invoke-interface {p0}, Lg5c;->observePlayHistory()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "observePlayHistory from audio"

    invoke-static {v0, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0}, Lht;->observePlayHistory()Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final observePlayListElements(ZZI)Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-ne p1, v0, :cond_2

    const-string v0, "audio"

    goto :goto_2

    :cond_2
    const-string v0, "video"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "observePlayListElements from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",excludeFavorites:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LiveDataProviderRepository"

    invoke-static {v0, p2}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1, v2, p3}, Lf68;->getPlayListMediaItemsLiveData(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observePlayListElementsById(ZJI)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJI)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    const-string v0, "audio"

    goto :goto_1

    :cond_1
    const-string v0, "video"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observePlayListElementsById,from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",playListId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProviderRepository"

    invoke-static {v1, v0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p2, p3, p1, p4}, Lf68;->b(JII)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observePlayListFolder(IJ)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "audio"

    goto :goto_0

    :cond_0
    const-string v0, "video"

    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lf68;->getPlayListFolderWithLiveData(IJ)Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observePlayListFolder,from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",playListId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LiveDataProviderRepository"

    invoke-static {p2, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final observePlayListFolderSet(IZI)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "audio"

    goto :goto_0

    :cond_0
    const-string v0, "video"

    :goto_0
    const-string v1, "LiveDataProviderRepository"

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lf68;->getNonFavoritePlayListsWithLiveData(II)Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "observeNonFavoritePlayListFolderSet,from :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lf68;->getPlayListFolderSetWithLiveData(II)Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "observePlayListFolderSet,from :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public final observePlayListFolderSetNonCount(IZI)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "audio"

    goto :goto_0

    :cond_0
    const-string v0, "video"

    :goto_0
    const-string v1, "LiveDataProviderRepository"

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lb68;->getNonFavoritePlayListsWithLiveData(II)Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "observeNonFavoritePlayListFolderSetNonCount from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lb68;->getPlayListsWithLiveData(II)Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "observePlayListFolderSetNonCount from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public final observeVideoConverting(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeVideoConverting,limitCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProviderRepository"

    invoke-static {v1, v0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->getMConvertingVideoDao()Lqj1;

    move-result-object p0

    invoke-interface {p0, p1}, Lqj1;->getAll(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    const-string p1, "getAll(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
