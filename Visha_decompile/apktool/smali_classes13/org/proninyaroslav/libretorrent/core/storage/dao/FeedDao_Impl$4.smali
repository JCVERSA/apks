.class Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao_Impl$4;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;)V
    .locals 3

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->url:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->name:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x4

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->lastUpdate:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    const/4 v0, 0x5

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->filter:Ljava/lang/String;

    const/4 v0, 0x6

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-boolean p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    const/4 v0, 0x7

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->fetchError:Ljava/lang/String;

    const/16 v0, 0x8

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x9

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao_Impl$4;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR ABORT `FeedChannel` SET `id` = ?,`url` = ?,`name` = ?,`lastUpdate` = ?,`autoDownload` = ?,`filter` = ?,`isRegexFilter` = ?,`fetchError` = ? WHERE `id` = ?"

    return-object p0
.end method
