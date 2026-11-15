.class public Lcom/transsion/audio/utils/AudioLoadDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/utils/AudioLoadDataUtils$a;
    }
.end annotation


# static fields
.field public static final c:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/transsion/audio/utils/AudioLoadDataUtils$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/utils/AudioLoadDataUtils;Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->k(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/utils/AudioLoadDataUtils;ZLandroid/net/Uri;ILcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->l(ZLandroid/net/Uri;ILcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/utils/AudioLoadDataUtils;)Lcom/transsion/audio/utils/AudioLoadDataUtils$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/audio/utils/AudioLoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->h(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/audio/utils/AudioLoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->i(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static j(I)Z
    .locals 3

    sget-object v0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->c:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq p0, v2, :cond_0

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public f(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 3

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncLoad uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioLoadDataUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils$a;->c(Landroid/net/Uri;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->m(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncLoadBuckets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioLoadDataUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isBucketValidate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;-><init>(Lcom/transsion/audio/utils/AudioLoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;
    .locals 8

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    iget p0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v1}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    const/16 v0, 0x16

    if-ne p0, v0, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v2

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lao;->K(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_1
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Lao;->C(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_2
    const/16 v0, 0x24

    const/4 v2, 0x0

    if-ne p0, v0, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lao;->Q(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_3
    const/16 v0, 0x29

    if-ne p0, v0, :cond_4

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lao;->b0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_4
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_c

    const/16 v3, 0x19

    if-ne p0, v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x34

    if-ne p0, v0, :cond_7

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {p0, v2, v3, v1}, Lao;->Y(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_7
    const/16 p1, 0x31

    if-ne p0, p1, :cond_8

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v1}, Lao;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_8
    const/16 p1, 0x32

    if-ne p0, p1, :cond_9

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v2}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_9
    const/16 p1, 0x33

    if-ne p0, p1, :cond_a

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lao;->b0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_a
    const/16 p1, 0x35

    if-ne p0, p1, :cond_b

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lao;->X(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/dbdata/utils/SortUtil;->x(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_b
    return-object v1

    :cond_c
    :goto_0
    if-ne p0, v0, :cond_d

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lao;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_d
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lao;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final i(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lao;->r0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final synthetic k(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils$a;->b(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public final synthetic l(ZLandroid/net/Uri;ILcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lao;->H(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p3}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "asyncLoad playlist:"

    const-string v0, "AudioLoadDataUtils"

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lir;

    invoke-direct {p1, p0, p2, p4}, Lir;-><init>(Lcom/transsion/audio/utils/AudioLoadDataUtils;Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 8

    iget v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-static {v4}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lhr;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lhr;-><init>(Lcom/transsion/audio/utils/AudioLoadDataUtils;ZLandroid/net/Uri;ILcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Lcom/transsion/audio/utils/AudioLoadDataUtils$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    return-void
.end method
