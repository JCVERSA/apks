.class public interface abstract Lqud;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM attr_click_room"
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM attr_click_room WHERE _id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract a(Lswd;)V
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM attr_click_room"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lswd;",
            ">;"
        }
    .end annotation
.end method
