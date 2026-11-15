.class public Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSortingComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private sorting:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSortingComparator;->sorting:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSortingComparator;->compare(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSortingComparator;->sorting:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->fromValue(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    move-result-object v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSortingComparator;->sorting:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;

    .line 3
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;->b()Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;)I

    move-result p0

    return p0
.end method

.method public getSorting()Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSortingComparator;->sorting:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;

    return-object p0
.end method
