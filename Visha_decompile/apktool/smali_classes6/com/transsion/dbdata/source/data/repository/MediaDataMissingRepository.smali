.class public final Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00102\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00100\u001d\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001d\u0010 \u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008 \u0010!J\u001b\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\"\u001a\u00020\r\u00a2\u0006\u0004\u0008#\u0010$R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "",
        "<init>",
        "()V",
        "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "existingItem",
        "newItem",
        "mergeMediaDataMissingItem",
        "(Lcom/transsion/dbdata/database/MediaDataMissingItem;Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "audioItem",
        "",
        "fromVideo",
        "",
        "upsertMediaDataMissingSingle",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;Z)I",
        "",
        "audioItems",
        "upsertMediaDataMissingMultiple",
        "(Ljava/util/List;Z)Ljava/util/List;",
        "mediaId",
        "getByMediaId",
        "(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "",
        "mediaPath",
        "getByMediaPath",
        "(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "getAllMissingData",
        "()Ljava/util/List;",
        "Landroidx/lifecycle/LiveData;",
        "observeAllMissingData",
        "()Landroidx/lifecycle/LiveData;",
        "deleteSingleMissingData",
        "(Ljava/lang/String;Z)I",
        "mediaType",
        "getAllByMediaType",
        "(I)Ljava/util/List;",
        "Loe6;",
        "mMediaDataMissingItemDao$delegate",
        "Lyi5;",
        "getMMediaDataMissingItemDao",
        "()Loe6;",
        "mMediaDataMissingItemDao",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaDataMissingRepository"


# instance fields
.field private final mMediaDataMissingItemDao$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lue6;

    invoke-direct {v0}, Lue6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->mMediaDataMissingItemDao$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a()Loe6;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->mMediaDataMissingItemDao_delegate$lambda$0()Loe6;

    move-result-object v0

    return-object v0
.end method

.method private final getMMediaDataMissingItemDao()Loe6;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->mMediaDataMissingItemDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loe6;

    return-object p0
.end method

.method private static final mMediaDataMissingItemDao_delegate$lambda$0()Loe6;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->h()Loe6;

    move-result-object v0

    return-object v0
.end method

.method private final mergeMediaDataMissingItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .locals 13

    new-instance p0, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaId()I

    move-result v2

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaType()I

    move-result v3

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_4

    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v6, v0

    goto :goto_7

    :cond_4
    :goto_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbumYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbumYear()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v7, v0

    goto :goto_a

    :cond_6
    :goto_9
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbumYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    :goto_b
    move-object v8, v0

    goto :goto_c

    :cond_7
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b

    :goto_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    :goto_d
    move-object v9, v0

    goto :goto_e

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    :goto_e
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v0

    :goto_f
    move-object v10, v0

    goto :goto_10

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_f

    :goto_10
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_12

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v11, v0

    goto :goto_13

    :cond_b
    :goto_12
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :goto_13
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_15

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object p1

    :goto_14
    move-object v12, p1

    goto :goto_16

    :cond_d
    :goto_15
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :goto_16
    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/transsion/dbdata/database/MediaDataMissingItem;-><init>(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final deleteSingleMissingData(Ljava/lang/String;Z)I
    .locals 1

    const-string v0, "mediaPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0, p1}, Loe6;->deleteByMediaPath(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->removeMissing(Ljava/lang/String;Z)V

    :cond_0
    return p0
.end method

.method public final getAllByMediaType(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0, p1}, Loe6;->getAllByMediaType(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAllMissingData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0}, Loe6;->getAllMissingData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getByMediaId(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0, p1}, Loe6;->getByMediaId(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object p0

    return-object p0
.end method

.method public final getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .locals 1

    const-string v0, "mediaPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0, p1}, Loe6;->getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object p0

    return-object p0
.end method

.method public final observeAllMissingData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0}, Loe6;->getAllMissingDataLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final upsertMediaDataMissingMultiple(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "MediaDataMissingRepository"

    const-string v1, "audioItems"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v5, "data"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object v4

    iget-object v6, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v6, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Loe6;->getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object v4

    iget v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v4, v5}, Loe6;->getByMediaId(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v4

    :goto_1
    iget-object v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    :goto_2
    invoke-static {v3, v5}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toMediaDataMissingItem(Lcom/transsion/dbdata/beans/media/AudioItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v3

    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->mergeMediaDataMissingItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v3

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0, v1}, Loe6;->upsertMultiple(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_5

    invoke-static {}, Ly71;->u()V

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_5
    :goto_5
    check-cast v4, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    sget-object v3, Lqe6;->m:Lqe6$a;

    invoke-virtual {v3, v4}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object v3

    invoke-virtual {v4}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    if-eqz v4, :cond_6

    sget-object v6, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateMissing(Ljava/lang/String;Lqe6;Z)V

    goto :goto_6

    :cond_6
    sget-object v4, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->addMissing(Lqe6;Z)V

    :goto_6
    move v3, v5

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated missing data cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items, fromVideo: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    const-string p2, "Failed to update missing data cache for batch operation"

    invoke-static {v0, p2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-object p1
.end method

.method public final upsertMediaDataMissingSingle(Lcom/transsion/dbdata/beans/media/AudioItem;Z)I
    .locals 5

    const-string v0, "MediaDataMissingRepository"

    const-string v1, "audioItem"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v2, "data"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object v1

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Loe6;->getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object v1

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v1, v2}, Loe6;->getByMediaId(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {p1, v2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toMediaDataMissingItem(Lcom/transsion/dbdata/beans/media/AudioItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object p1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->mergeMediaDataMissingItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object p1

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getMMediaDataMissingItemDao()Loe6;

    move-result-object p0

    invoke-interface {p0, p1}, Loe6;->upsertSingle(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J

    move-result-wide v2

    long-to-int p0, v2

    sget-object v2, Lqe6;->m:Lqe6$a;

    invoke-virtual {v2, p1}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ", fromVideo: "

    if-eqz v1, :cond_3

    :try_start_1
    sget-object v4, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateMissing(Ljava/lang/String;Lqe6;Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated missing data cache for path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->addMissing(Lqe6;Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added missing data to cache for path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update missing data cache for path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x2

    :goto_3
    return p0
.end method
