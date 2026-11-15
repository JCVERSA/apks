.class final enum Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$6;
.super Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;-><init>(Ljava/lang/String;ILoua;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILoua;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$6;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$6;->compare(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;)I
    .locals 0

    .line 2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->ASC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    if-ne p3, p0, :cond_0

    .line 3
    iget p0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    iget p1, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 4
    :cond_0
    iget p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
