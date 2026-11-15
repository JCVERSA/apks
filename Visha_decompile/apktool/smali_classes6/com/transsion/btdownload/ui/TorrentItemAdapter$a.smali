.class public Lcom/transsion/btdownload/ui/TorrentItemAdapter$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/ui/TorrentItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Z
    .locals 4

    iget-object p0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    iget-object v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    iget v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    if-ne p0, v0, :cond_0

    iget-wide v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    iget-wide v2, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    iget-wide v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    iget-wide v2, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    iget-object p0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    iget-object p1, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$a;->a(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$a;->b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Z

    move-result p0

    return p0
.end method

.method public b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Z
    .locals 0

    iget-object p0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    iget-object p1, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
