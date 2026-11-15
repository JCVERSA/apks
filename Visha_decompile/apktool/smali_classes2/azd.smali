.class public interface abstract Lazd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM attr_impression_room"
    .end annotation
.end method

.method public abstract a(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM attr_impression_room WHERE _id IN (SELECT _id FROM attr_impression_room ORDER BY _id ASC LIMIT :limitCount)"
    .end annotation
.end method

.method public abstract a(Lz30;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM attr_impression_room"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz30;",
            ">;"
        }
    .end annotation
.end method
