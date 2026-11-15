.class public interface abstract Ltba;
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
            "Lkmb;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract a(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lkmb;
        }
    .end annotation
.end method

.method public abstract a()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM cloudList_room"
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
            "Lkmb;",
            ">;)V"
        }
    .end annotation
.end method
