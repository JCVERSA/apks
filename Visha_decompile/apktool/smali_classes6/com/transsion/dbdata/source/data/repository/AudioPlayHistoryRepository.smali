.class public final Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 22\u00020\u0001:\u00012B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J1\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J+\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J+\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\tH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ#\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008!\u0010\"J\u001d\u0010$\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u001a\u00a2\u0006\u0004\u0008$\u0010\u001dJ\u001d\u0010%\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u001a\u00a2\u0006\u0004\u0008%\u0010\u001dJ\u001d\u0010(\u001a\u00020\n2\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\t\u00a2\u0006\u0004\u0008(\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010+R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\u00a8\u00063"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "",
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "audioQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "audioMVRepository",
        "<init>",
        "(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;)V",
        "Lkotlin/Function0;",
        "",
        "",
        "mediaIdProvider",
        "",
        "combineMVList",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "queryAudioItems",
        "(Lc74;Z)Ljava/util/List;",
        "mediaIds",
        "processMediaIds",
        "(Ljava/util/List;Z)Ljava/util/List;",
        "resultList",
        "Lzfb;",
        "cleanupNonExistentRecords",
        "(Ljava/util/List;Ljava/util/List;)V",
        "",
        "mediaId",
        "",
        "filePath",
        "smartUpdatePlayCount",
        "(JLjava/lang/String;)I",
        "queryAll",
        "(Z)Ljava/util/List;",
        "minPlayCount",
        "queryFrequently",
        "(IZ)Ljava/util/List;",
        "path",
        "deleteByMediaId",
        "deletePlayFrequentlyElement",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "mediaItems",
        "deleteMultiple",
        "(Ljava/util/List;)I",
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "Lht;",
        "mAudioPlayHistoryDao$delegate",
        "Lyi5;",
        "getMAudioPlayHistoryDao",
        "()Lht;",
        "mAudioPlayHistoryDao",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository$Companion;

.field private static final TAG:Ljava/lang/String; = "AudioPlayHistoryRepository"


# instance fields
.field private final audioMVRepository:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

.field private final audioQueryRepository:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

.field private final mAudioPlayHistoryDao$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;)V
    .locals 1

    const-string v0, "audioQueryRepository"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioMVRepository"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->audioQueryRepository:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    iput-object p2, p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->audioMVRepository:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    new-instance p1, Llt;

    invoke-direct {p1}, Llt;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->mAudioPlayHistoryDao$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->queryAll$lambda$12(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->queryFrequently$lambda$14(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lht;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->mAudioPlayHistoryDao_delegate$lambda$0()Lht;

    move-result-object v0

    return-object v0
.end method

.method private final cleanupNonExistentRecords(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->findMissingIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li81;->F0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0, p2}, Lht;->deleteByMediaIds(Ljava/util/List;)I

    :cond_2
    return-void
.end method

.method private final getMAudioPlayHistoryDao()Lht;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->mAudioPlayHistoryDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lht;

    return-object p0
.end method

.method private static final mAudioPlayHistoryDao_delegate$lambda$0()Lht;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->f()Lht;

    move-result-object v0

    return-object v0
.end method

.method private final processMediaIds(Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Li81;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->audioQueryRepository:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v5, v4}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz p2, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-static {v2, v6}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->findMissingIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->audioMVRepository:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    invoke-static {v3, v2, v4, v5, v4}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryMVList$default(Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v6, v6, v5, v4}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :goto_1
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p2, :cond_5

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method private static final queryAll$lambda$12(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)Ljava/util/List;
    .locals 3

    invoke-static {}, Loa1;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0, v0}, Lht;->getAllPlayRecordMediaIds(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final queryAudioItems(Lc74;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->processMediaIds(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object v2, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v4, "data"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getPlayCount(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->cleanupNonExistentRecords(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryAudioItems error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioPlayHistoryRepository"

    invoke-static {p2, p1}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    :cond_3
    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static final queryFrequently$lambda$14(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;I)Ljava/util/List;
    .locals 2

    invoke-static {}, Loa1;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lht;->getFrequentPlayedMediaIds(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final deleteByMediaId(JLjava/lang/String;)I
    .locals 1

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lht;->deleteByMediaId(J)I

    move-result p0

    if-lez p0, :cond_0

    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenDelete(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to delete playback history: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioPlayHistoryRepository"

    invoke-static {p2, p1}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    :cond_2
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public final deleteMultiple(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/16 v1, 0xa

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenDelete(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0, v0}, Lht;->deleteByMediaIds(Ljava/util/List;)I

    move-result p0

    goto :goto_5

    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p1

    invoke-interface {p1}, Lht;->getAllByPlayCount()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/AudioPlayHistory;->get_data()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenDelete(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0}, Lht;->deleteAll()I

    move-result p0

    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete playback history: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayHistoryRepository"

    invoke-static {v0, p1}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    :cond_7
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_8

    :cond_8
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final deletePlayFrequentlyElement(JLjava/lang/String;)I
    .locals 8

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-wide v2, p1

    invoke-static/range {v1 .. v7}, Lht$a;->b(Lht;JJILjava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenDelete(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to delete playback history: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioPlayHistoryRepository"

    invoke-static {p2, p1}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    :cond_2
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public final queryAll(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkt;

    invoke-direct {v0, p0}, Lkt;-><init>(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->queryAudioItems(Lc74;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryFrequently(IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmt;

    invoke-direct {v0, p0, p1}, Lmt;-><init>(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;I)V

    invoke-direct {p0, v0, p2}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->queryAudioItems(Lc74;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final smartUpdatePlayCount(JLjava/lang/String;)I
    .locals 9
    .annotation build Landroidx/room/Transaction;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->recordPlayCount(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-wide v2, p1

    invoke-static/range {v1 .. v7}, Lht$a;->a(Lht;JJILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p3

    invoke-direct/range {v1 .. v8}, Lcom/transsion/dbdata/database/AudioPlayHistory;-><init>(Ljava/lang/String;Ljava/lang/Long;IJJ)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->getMAudioPlayHistoryDao()Lht;

    move-result-object p0

    invoke-interface {p0, v0}, Lht;->upsertSingle(Lcom/transsion/dbdata/database/AudioPlayHistory;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    return v0
.end method
