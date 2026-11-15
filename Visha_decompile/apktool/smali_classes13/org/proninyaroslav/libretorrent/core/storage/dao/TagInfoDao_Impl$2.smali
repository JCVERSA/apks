.class Lorg/proninyaroslav/libretorrent/core/storage/dao/TagInfoDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;)V
    .locals 2

    const/4 p0, 0x1

    iget-wide v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TagInfoDao_Impl$2;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `TagInfo` WHERE `id` = ?"

    return-object p0
.end method
