.class public final Lf5c;
.super Lac0;
.source "SourceFile"


# instance fields
.field public final d:Lyi5;

.field public final e:Lyi5;

.field public final f:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lac0;-><init>()V

    new-instance v0, Lc5c;

    invoke-direct {v0}, Lc5c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lf5c;->d:Lyi5;

    new-instance v0, Ld5c;

    invoke-direct {v0}, Ld5c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lf5c;->e:Lyi5;

    new-instance v0, Le5c;

    invoke-direct {v0}, Le5c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lf5c;->f:Lyi5;

    new-instance v0, Lb5c;

    invoke-direct {v0}, Lb5c;-><init>()V

    const-class v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    invoke-virtual {p0}, Lf5c;->n()Lzob;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/VideoInfoTrack;

    invoke-virtual {p0}, Lf5c;->n()Lzob;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    new-instance v0, Lm7c;

    invoke-direct {v0}, Lm7c;-><init>()V

    const-class v1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    new-instance v0, Lwb6;

    invoke-direct {v0}, Lwb6;-><init>()V

    const-class v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    new-instance v0, Lo78;

    invoke-direct {v0}, Lo78;-><init>()V

    const-class v1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    new-instance v0, Lc48;

    invoke-direct {v0}, Lc48;-><init>()V

    const-class v1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    new-instance v0, Lte6;

    invoke-direct {v0}, Lte6;-><init>()V

    const-class v1, Lqe6;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    new-instance v0, Lib5;

    invoke-direct {v0}, Lib5;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lac0;->j(Ljava/lang/Class;Lwv4;)V

    return-void
.end method

.method public static synthetic k()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lf5c;->p()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l()Lzob;
    .locals 1

    invoke-static {}, Lf5c;->o()Lzob;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lf5c;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final o()Lzob;
    .locals 1

    new-instance v0, Lzob;

    invoke-direct {v0}, Lzob;-><init>()V

    return-object v0
.end method

.method private static final p()Ljava/util/Set;
    .locals 7

    const-class v5, Lcom/transsion/dbdata/database/ConvertingVideo;

    const-class v6, Lcom/transsion/dbdata/beans/SubtitleHistory;

    const-class v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const-class v1, Lcom/transsion/dbdata/database/MediaPlayCount;

    const-class v2, Lcom/transsion/dbdata/database/PlayListMediaItem;

    const-class v3, Lcom/transsion/dbdata/database/PlayListItem;

    const-class v4, Lqe6;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static final q()Ljava/util/Set;
    .locals 9

    const-class v7, Lqe6;

    const-class v8, Ljava/lang/String;

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    const-class v1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    const-class v2, Lcom/transsion/dbdata/beans/media/VideoInfoTrack;

    const-class v3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    const-class v4, Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-class v5, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const-class v6, Lcom/transsion/dbdata/database/PlayListMediaItem;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lf5c;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lf5c;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final n()Lzob;
    .locals 0

    iget-object p0, p0, Lf5c;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzob;

    return-object p0
.end method
