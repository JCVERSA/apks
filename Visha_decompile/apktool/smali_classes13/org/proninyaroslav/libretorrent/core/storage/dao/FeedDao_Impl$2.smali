.class Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;)V
    .locals 2

    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->id:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->title:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x3

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->feedId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->downloadUrl:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->articleUrl:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 p0, 0x6

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->pubDate:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x7

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->fetchDate:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;->read:Z

    const/16 p2, 0x8

    int-to-long v0, p0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao_Impl$2;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `FeedItem` (`id`,`title`,`feedId`,`downloadUrl`,`articleUrl`,`pubDate`,`fetchDate`,`read`) VALUES (?,?,?,?,?,?,?,?)"

    return-object p0
.end method
