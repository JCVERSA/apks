.class public final Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/PlayListRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 w2\u00020\u0001:\u0001wB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Ja\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\"\u0008\u0002\u0010\u000e\u001a\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0006\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JC\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00132\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u001e\u0010\u000e\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00060\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J7\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ;\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0016\u001a\u00020\u00042\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J/\u0010!\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u001b\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0\u00062\u0006\u0010#\u001a\u00020\u0019\u00a2\u0006\u0004\u0008%\u0010&J\u001b\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010#\u001a\u00020\u0019\u00a2\u0006\u0004\u0008-\u0010.J-\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010/\u001a\u00020\u0019\u00a2\u0006\u0004\u00081\u00102J\u001f\u00104\u001a\u0004\u0018\u0001032\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007\u00a2\u0006\u0004\u00084\u00105J\u0017\u00107\u001a\u0004\u0018\u0001062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00087\u00108J\u001d\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0019\u00a2\u0006\u0004\u0008:\u0010;J\u0015\u0010\u001c\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<\u00a2\u0006\u0004\u0008\u001c\u0010>J\u001b\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010=\u001a\u00020?\u00a2\u0006\u0004\u0008\u001f\u0010@J\u0015\u0010A\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0004\u0008A\u0010BJ\u0015\u0010!\u001a\u00020\u00072\u0006\u0010=\u001a\u00020C\u00a2\u0006\u0004\u0008!\u0010DJ\u001b\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010=\u001a\u00020E\u00a2\u0006\u0004\u0008F\u0010GJ\u0015\u0010H\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007\u00a2\u0006\u0004\u0008H\u0010IJ\u001d\u0010J\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000b\u00a2\u0006\u0004\u0008J\u0010KJ+\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u000b\u00a2\u0006\u0004\u0008N\u0010OJ1\u0010R\u001a\u0008\u0012\u0004\u0012\u00020,0\u00062\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00192\u0008\u0008\u0002\u0010P\u001a\u00020\u00192\u0008\u0008\u0002\u0010Q\u001a\u00020\u0019\u00a2\u0006\u0004\u0008R\u0010SJ%\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\'\u0010TJ\u001f\u0010V\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010U\u001a\u00020\u000b\u00a2\u0006\u0004\u0008V\u0010WR\u001b\u0010]\u001a\u00020X8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u001b\u0010b\u001a\u00020^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010Z\u001a\u0004\u0008`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010Z\u001a\u0004\u0008e\u0010fR\u001b\u0010l\u001a\u00020h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010Z\u001a\u0004\u0008j\u0010kR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010Z\u001a\u0004\u0008o\u0010pR\u001b\u0010v\u001a\u00020r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008s\u0010Z\u001a\u0004\u0008t\u0010u\u00a8\u0006x"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "",
        "<init>",
        "()V",
        "",
        "playlistId",
        "",
        "",
        "mediaIds",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "items",
        "",
        "displayName",
        "Lkotlin/Function1;",
        "queryByPaths",
        "Lzfb;",
        "cleanupInvalidElements",
        "(JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;)V",
        "missingIds",
        "",
        "repairElementsByPath",
        "(Ljava/util/List;Le74;)Ljava/util/Set;",
        "playListId",
        "mediaId",
        "path",
        "",
        "isFavorite",
        "fromVideo",
        "addPlayListElement",
        "(JILjava/lang/String;ZZ)I",
        "mediaItems",
        "addPlayListElements",
        "(JLjava/util/List;ZZ)Ljava/util/List;",
        "deletePlayListElement",
        "(IIZZ)I",
        "isVideo",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "getPlayList",
        "(Z)Ljava/util/List;",
        "getVideoPlayListElement",
        "(J)Ljava/util/List;",
        "createType",
        "queryFavoriteListID",
        "(I)J",
        "Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "queryFavoriteList",
        "(Z)Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "combineMVList",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "getAudioPlayListElement",
        "(JLjava/lang/String;Z)Ljava/util/List;",
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "getAudioPlayMediaListElement",
        "(II)Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "Lcom/transsion/dbdata/database/PlayListItem;",
        "getAudioPlayList",
        "(J)Lcom/transsion/dbdata/database/PlayListItem;",
        "name",
        "createPlayList",
        "(Ljava/lang/String;Z)I",
        "Lb15$f;",
        "action",
        "(Lb15$f;)I",
        "Lb15$g;",
        "(Lb15$g;)Ljava/util/List;",
        "deletePlayList",
        "(J)I",
        "Ld82$h;",
        "(Ld82$h;)I",
        "Ld82$i;",
        "deletePlayListElements",
        "(Ld82$i;)Ljava/util/List;",
        "deletePlayListElementById",
        "(I)I",
        "updatePlayListName",
        "(JLjava/lang/String;)I",
        "newMediaId",
        "newPath",
        "updatePlayListElement",
        "(IILjava/lang/String;)Ljava/util/List;",
        "includeRecent",
        "includeFavorite",
        "getPlayListFolderSet",
        "(ZZZ)Ljava/util/List;",
        "(JLjava/lang/String;)Ljava/util/List;",
        "url",
        "getVideoOnlinePlayListElement",
        "(JLjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository$delegate",
        "Lyi5;",
        "getMAudioQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository$delegate",
        "getMAudioMVRepository",
        "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository$delegate",
        "getMVideoQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository$delegate",
        "getMFileQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository",
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
        "Companion",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/PlayListRepository$Companion;

.field private static final PATH_QUERY_BATCH_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PlayListRepository"


# instance fields
.field private final mAudioMVRepository$delegate:Lyi5;

.field private final mAudioQueryRepository$delegate:Lyi5;

.field private final mFileQueryRepository$delegate:Lyi5;

.field private final mPlayListDao$delegate:Lyi5;

.field private final mPlayListMediaDao$delegate:Lyi5;

.field private final mVideoQueryRepository$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/PlayListRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp78;

    invoke-direct {v0}, Lp78;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mAudioQueryRepository$delegate:Lyi5;

    new-instance v0, Lq78;

    invoke-direct {v0}, Lq78;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mAudioMVRepository$delegate:Lyi5;

    new-instance v0, Lr78;

    invoke-direct {v0}, Lr78;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mVideoQueryRepository$delegate:Lyi5;

    new-instance v0, Ls78;

    invoke-direct {v0}, Ls78;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mFileQueryRepository$delegate:Lyi5;

    new-instance v0, Lt78;

    invoke-direct {v0}, Lt78;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mPlayListDao$delegate:Lyi5;

    new-instance v0, Lu78;

    invoke-direct {v0}, Lu78;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mPlayListMediaDao$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a()Lb68;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mPlayListDao_delegate$lambda$4()Lb68;

    move-result-object v0

    return-object v0
.end method

.method private final addPlayListElement(JILjava/lang/String;ZZ)I
    .locals 12

    .line 8
    new-instance v11, Lcom/transsion/dbdata/database/PlayListMediaItem;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v11

    move-wide v3, p1

    move v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v10}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v0

    invoke-interface {v0, v11}, Lf68;->insertSingle(Lcom/transsion/dbdata/database/PlayListMediaItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    if-eqz p5, :cond_0

    .line 10
    sget-object v2, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/transsion/dbdata/database/SimpleMediaItem;

    move v4, p3

    move-object/from16 v5, p4

    invoke-direct {v3, p3, v5}, Lcom/transsion/dbdata/database/SimpleMediaItem;-><init>(ILjava/lang/String;)V

    move/from16 v4, p6

    invoke-virtual {v2, v3, v4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->addFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method private final addPlayListElements(JLjava/util/List;ZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6
    check-cast p3, Ljava/lang/Iterable;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 9
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v3

    long-to-int v4, p1

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v3, v4, v2}, Lf68;->getByIds(II)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toPlayListMediaItem(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1}, Lf68;->insertMultiple(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, p2, 0x1

    if-gez p2, :cond_2

    .line 15
    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int p3, v2

    if-lez p3, :cond_3

    if-eqz p4, :cond_3

    .line 16
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 17
    sget-object v2, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v2

    .line 18
    new-instance v3, Lcom/transsion/dbdata/database/SimpleMediaItem;

    iget v4, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v5, "data"

    invoke-static {p2, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, p2}, Lcom/transsion/dbdata/database/SimpleMediaItem;-><init>(ILjava/lang/String;)V

    .line 19
    invoke-virtual {v2, v3, p5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->addFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V

    .line 20
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move p2, v1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static synthetic b()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mAudioMVRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getAudioPlayListElement$lambda$11$lambda$10(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final cleanupInvalidElements(JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            "Le74;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt p5, v0, :cond_2

    return-void

    :cond_2
    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Li81;->e0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt p5, v0, :cond_3

    return-void

    :cond_3
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    const-string v0, "PlayListRepository"

    if-eqz p5, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cleanupInvalidElements: skip cleanup for playlistId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", query returned 0 of "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " record(s), untrusted result"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p3, p4}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->findMissingIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    return-void

    :cond_5
    if-eqz p6, :cond_6

    invoke-direct {p0, p3, p6}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->repairElementsByPath(Ljava/util/List;Le74;)Ljava/util/Set;

    move-result-object p4

    if-nez p4, :cond_7

    :cond_6
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p4

    :cond_7
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_8

    goto :goto_2

    :cond_8
    check-cast p3, Ljava/lang/Iterable;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p5, p6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    move-object p3, p5

    :goto_2
    move-object p5, p3

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_b

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupInvalidElements: clean up "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " invalid record(s) for playlistId="

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", survived="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p3}, Lf68;->deleteByMediaIds(Ljava/util/List;)I

    :cond_b
    return-void
.end method

.method public static synthetic cleanupInvalidElements$default(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->cleanupInvalidElements(JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;)V

    return-void
.end method

.method public static synthetic d()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mAudioQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method private final deletePlayListElement(IIZZ)I
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lf68;->deleteByPlayListId(II)I

    move-result p0

    if-lez p0, :cond_0

    if-eqz p3, :cond_0

    .line 7
    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->removeFavorite(IZ)V

    :cond_0
    return p0
.end method

.method public static synthetic e()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mVideoQueryRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mFileQueryRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Lf68;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mPlayListMediaDao_delegate$lambda$5()Lf68;

    move-result-object v0

    return-object v0
.end method

.method private static final getAudioPlayListElement$lambda$11$lambda$10(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "paths"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByPath(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mAudioMVRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    return-object p0
.end method

.method private final getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mAudioQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    return-object p0
.end method

.method private final getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mFileQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    return-object p0
.end method

.method private final getMPlayListDao()Lb68;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mPlayListDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb68;

    return-object p0
.end method

.method private final getMPlayListMediaDao()Lf68;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mPlayListMediaDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf68;

    return-object p0
.end method

.method private final getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->mVideoQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    return-object p0
.end method

.method public static synthetic getPlayListFolderSet$default(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getPlayListFolderSet(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final mAudioMVRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mFileQueryRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mPlayListDao_delegate$lambda$4()Lb68;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlayListMediaDao_delegate$lambda$5()Lf68;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->k()Lf68;

    move-result-object v0

    return-object v0
.end method

.method private static final mVideoQueryRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;-><init>()V

    return-object v0
.end method

.method private final repairElementsByPath(Ljava/util/List;Le74;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Le74;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v0

    invoke-interface {v0, p1}, Lf68;->getByMediaIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/PlayListMediaItem;->get_data()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object v3, v2

    :cond_2
    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Li81;->e0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/lang/Iterable;

    const/16 v2, 0x64

    invoke-static {v0, v2}, Li81;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p2, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v6, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-lez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/PlayListMediaItem;->get_data()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/PlayListMediaItem;->getMediaId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/PlayListMediaItem;->getMediaId()I

    move-result v5

    if-eq v5, v4, :cond_b

    goto :goto_3

    :cond_b
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_c

    invoke-virtual {v2, v4}, Lcom/transsion/dbdata/database/PlayListMediaItem;->setMediaId(I)V

    goto :goto_4

    :cond_c
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_a

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, v0}, Lf68;->updateMultiple(Ljava/util/List;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "repairElementsByPath: repaired media_id for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " record(s) by path"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayListRepository"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object p2
.end method


# virtual methods
.method public final addPlayListElement(Lb15$f;)I
    .locals 8

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$f;->b()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lb15$f;->c()J

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Lb15$f;->b()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 4
    invoke-virtual {p1}, Lb15$f;->b()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v0, "data"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lb15$f;->d()Z

    move-result v6

    .line 6
    invoke-virtual {p1}, Lb15$f;->a()Z

    move-result v7

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->addPlayListElement(JILjava/lang/String;ZZ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addPlayListElements(Lb15$g;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb15$g;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lb15$g;->c()J

    move-result-wide v2

    .line 2
    invoke-virtual {p1}, Lb15$g;->b()Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lb15$g;->d()Z

    move-result v5

    .line 4
    invoke-virtual {p1}, Lb15$g;->a()Z

    move-result v6

    move-object v1, p0

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->addPlayListElements(JLjava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createPlayList(Ljava/lang/String;Z)I
    .locals 13

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/database/PlayListItem;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    :goto_0
    move v6, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :goto_1
    const/16 v11, 0x31

    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v12}, Lcom/transsion/dbdata/database/PlayListItem;-><init>(JLjava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, v0}, Lb68;->insertSingle(Lcom/transsion/dbdata/database/PlayListItem;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public final deletePlayList(J)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lb68;->deleteById(J)I

    move-result p0

    return p0
.end method

.method public final deletePlayListElement(Ld82$h;)I
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ld82$h;->c()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ld82$h;->b()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ld82$h;->d()Z

    move-result v2

    .line 4
    invoke-virtual {p1}, Ld82$h;->a()Z

    move-result p1

    .line 5
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElement(IIZZ)I

    move-result p0

    return p0
.end method

.method public final deletePlayListElementById(I)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1}, Lf68;->deleteByMediaId(I)I

    move-result p0

    return p0
.end method

.method public final deletePlayListElements(Ld82$i;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$i;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$i;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Ld82$i;->c()I

    move-result v3

    invoke-virtual {p1}, Ld82$i;->d()Z

    move-result v4

    invoke-virtual {p1}, Ld82$i;->a()Z

    move-result v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElement(IIZZ)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, -0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getAudioPlayList(J)Lcom/transsion/dbdata/database/PlayListItem;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lb68;->getByPlayListID(J)Lcom/transsion/dbdata/database/PlayListItem;

    move-result-object p0

    return-object p0
.end method

.method public final getAudioPlayListElement(JLjava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lf68;->getByPlayListId(J)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_0

    invoke-static {v4, v0}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->findMissingIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v1

    invoke-virtual {v1, p4, p3}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    check-cast v0, Ljava/util/Collection;

    check-cast p4, Ljava/lang/Iterable;

    invoke-static {v0, p4}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v7, Lv78;

    invoke-direct {v7, p0}, Lv78;-><init>(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;)V

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->cleanupInvalidElements(JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;)V

    return-object v0
.end method

.method public final getAudioPlayMediaListElement(II)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lf68;->getByIds(II)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final getPlayList(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1}, Lf68;->getPlayListWithCount(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setCount(I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final getPlayListFolderSet(ZZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lf68;->getPlayListFolderSetConditional(IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoOnlinePlayListElement(JLjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const-string v0, "url"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoOnlinePlayListElement\uff0cplaylistId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListRepository"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lf68;->getPlayListElementByCombine(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p3}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p1, "NULL"

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getVideoOnlinePlayListElement result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getVideoPlayListElement(J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lf68;->getByPlayListId(J)Ljava/util/List;

    move-result-object v4

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-static {v4, v0}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->findMissingIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 6
    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_0
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v0

    .line 7
    invoke-static/range {v1 .. v9}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->cleanupInvalidElements$default(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getVideoPlayListElement(JLjava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lf68;->getByPlayListId(J)Ljava/util/List;

    move-result-object v4

    .line 9
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 11
    invoke-static {v4, v0}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->findMissingIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 13
    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_0
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v0

    move-object v6, p3

    .line 14
    invoke-static/range {v1 .. v9}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->cleanupInvalidElements$default(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final queryFavoriteList(Z)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 6

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1}, Lb68;->getFavoritePlaylist(I)Lcom/transsion/dbdata/database/PlayListItem;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListItem;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListItem;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListItem;->getCategory()I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/database/PlayListFolderItem;-><init>(JLjava/lang/String;II)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final queryFavoriteListID(I)J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1}, Lb68;->getFavoritePlaylistId(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final updatePlayListElement(IILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "newPath"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v0

    invoke-interface {v0, p1}, Lf68;->getByMediaId(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

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

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/dbdata/database/PlayListMediaItem;->setId(J)V

    invoke-virtual {v1, p3}, Lcom/transsion/dbdata/database/PlayListMediaItem;->set_data(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListMediaDao()Lf68;

    move-result-object v2

    invoke-interface {v2, v1}, Lf68;->updateSingle(Lcom/transsion/dbdata/database/PlayListMediaItem;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v0
.end method

.method public final updatePlayListName(JLjava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getMPlayListDao()Lb68;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lb68;->renamePlaylist(JLjava/lang/String;)I

    move-result p0

    return p0
.end method
