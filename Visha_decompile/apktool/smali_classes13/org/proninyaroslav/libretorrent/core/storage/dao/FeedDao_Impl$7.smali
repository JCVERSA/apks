.class Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao_Impl$7;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE FeedItem SET read = 0 WHERE id = ?"

    return-object p0
.end method
