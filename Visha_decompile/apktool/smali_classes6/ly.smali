.class public final Lly;
.super Lac0;
.source "SourceFile"


# instance fields
.field public final d:Lyi5;

.field public final e:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lac0;-><init>()V

    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lly;->d:Lyi5;

    new-instance v0, Lky;

    invoke-direct {v0}, Lky;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lly;->e:Lyi5;

    new-instance v0, Liy;

    invoke-direct {v0}, Liy;-><init>()V

    const-class v1, Lcom/transsion/dbdata/beans/media/AudioItem;

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

    invoke-static {}, Lly;->n()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lly;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final m()Ljava/util/Set;
    .locals 6

    const-class v4, Lqe6;

    const-class v5, Lcom/transsion/dbdata/database/ConvertAudio;

    const-class v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const-class v1, Lcom/transsion/dbdata/database/MediaPlayCount;

    const-class v2, Lcom/transsion/dbdata/database/PlayListMediaItem;

    const-class v3, Lcom/transsion/dbdata/database/PlayListItem;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final n()Ljava/util/Set;
    .locals 6

    const-class v4, Lqe6;

    const-class v5, Ljava/lang/String;

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    const-class v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-class v2, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const-class v3, Lcom/transsion/dbdata/database/PlayListMediaItem;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lly;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lly;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
