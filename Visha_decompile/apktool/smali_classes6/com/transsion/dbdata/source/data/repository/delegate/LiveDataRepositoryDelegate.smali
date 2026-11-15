.class public final Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u001d\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00062\u0006\u0010\u0005\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001f\u0010 J!\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u001d\u001a\u00020!\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u001d\u001a\u00020$\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u00070\u0006\u00a2\u0006\u0004\u0008(\u0010)J\u0019\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\u00070\u0006\u00a2\u0006\u0004\u0008+\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;",
        "",
        "<init>",
        "()V",
        "Lrl8$a;",
        "action",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/transsion/dbdata/database/ConvertAudio;",
        "observeConvertAudio",
        "(Lrl8$a;)Landroidx/lifecycle/LiveData;",
        "Lrl8$j;",
        "Lcom/transsion/dbdata/database/ConvertingVideo;",
        "observeVideoConverting",
        "(Lrl8$j;)Landroidx/lifecycle/LiveData;",
        "Lrl8$i;",
        "Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "observePlayListFolderSet",
        "(Lrl8$i;)Landroidx/lifecycle/LiveData;",
        "Lcom/transsion/dbdata/database/PlayListItem;",
        "observePlayListFolderSetNonCount",
        "Lrl8$h;",
        "observePlayListFolder",
        "(Lrl8$h;)Landroidx/lifecycle/LiveData;",
        "Lrl8$e;",
        "Lcom/transsion/dbdata/database/MediaPlayCount;",
        "observePlayHistory",
        "(Lrl8$e;)Landroidx/lifecycle/LiveData;",
        "Lrl8$f;",
        "input",
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "observePlayListElements",
        "(Lrl8$f;)Landroidx/lifecycle/LiveData;",
        "Lrl8$g;",
        "observePlayListElementsById",
        "(Lrl8$g;)Landroidx/lifecycle/LiveData;",
        "Lrl8$c;",
        "observeFavoritePlayListElements",
        "(Lrl8$c;)Landroidx/lifecycle/LiveData;",
        "Lcom/transsion/dbdata/beans/SubtitleHistory;",
        "observeDownloadSubtitle",
        "()Landroidx/lifecycle/LiveData;",
        "Lqe6;",
        "observeAllMissingData",
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
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final observeAllMissingData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lqe6;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observeAllMissingData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observeConvertAudio(Lrl8$a;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$a;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertAudio;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$a;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observeConvertAudio(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observeDownloadSubtitle()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observeDownloadSubtitle()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observeFavoritePlayListElements(Lrl8$c;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$c;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$c;->b()Z

    move-result v0

    invoke-virtual {p1}, Lrl8$c;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observeFavoritePlayListElements(ZI)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observePlayHistory(Lrl8$e;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$e;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaPlayCount;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$e;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observePlayHistory(Z)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observePlayListElements(Lrl8$f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$f;->c()Z

    move-result v0

    invoke-virtual {p1}, Lrl8$f;->b()Z

    move-result v1

    invoke-virtual {p1}, Lrl8$f;->d()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observePlayListElements(ZZI)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observePlayListElementsById(Lrl8$g;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$g;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    const/4 p0, 0x0

    throw p0
.end method

.method public final observePlayListFolder(Lrl8$h;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$h;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    const/4 p0, 0x0

    throw p0
.end method

.method public final observePlayListFolderSet(Lrl8$i;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$i;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$i;->c()I

    move-result v0

    invoke-virtual {p1}, Lrl8$i;->d()Z

    move-result v1

    invoke-virtual {p1}, Lrl8$i;->e()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observePlayListFolderSet(IZI)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observePlayListFolderSetNonCount(Lrl8$i;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$i;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$i;->c()I

    move-result v0

    invoke-virtual {p1}, Lrl8$i;->d()Z

    move-result v1

    invoke-virtual {p1}, Lrl8$i;->e()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observePlayListFolderSetNonCount(IZI)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final observeVideoConverting(Lrl8$j;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl8$j;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;

    invoke-virtual {p1}, Lrl8$j;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;->observeVideoConverting(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
