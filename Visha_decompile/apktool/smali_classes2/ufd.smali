.class public interface abstract Lufd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/util/List;)I
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpid;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract a(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lpid;
        }
    .end annotation
.end method

.method public abstract a()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM adList_room"
    .end annotation
.end method

.method public abstract b(Landroidx/sqlite/db/SupportSQLiteQuery;)I
    .annotation build Landroidx/room/RawQuery;
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpid;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM adList_room WHERE ad_creative_id IN (:ad_creative_ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lpid;",
            ">;"
        }
    .end annotation
.end method
