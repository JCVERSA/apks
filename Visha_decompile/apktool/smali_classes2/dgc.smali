.class public interface abstract Ldgc;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry_tracking_table_room WHERE create_time < :invalidTime"
    .end annotation
.end method

.method public abstract a([Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry_tracking_table_room WHERE uuid in (:uuids)"
    .end annotation
.end method

.method public abstract a(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .annotation build Landroidx/room/RawQuery;
    .end annotation
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tracking_data FROM retry_tracking_table_room"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/cloud/hisavana/sdk/s;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract b(Lcom/cloud/hisavana/sdk/s;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract b()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry_tracking_table_room"
    .end annotation
.end method
