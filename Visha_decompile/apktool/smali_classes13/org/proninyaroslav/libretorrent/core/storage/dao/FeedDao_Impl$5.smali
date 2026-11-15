.class Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao_Impl$5;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM FeedItem WHERE fetchDate < ?"

    return-object p0
.end method
