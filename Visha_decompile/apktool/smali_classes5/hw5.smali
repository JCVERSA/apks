.class public interface abstract Lhw5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllCaches()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM mi_media_library_cache"
    .end annotation
.end method

.method public abstract getAllCaches()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM mi_media_library_cache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/MIMediaLibraryCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCacheByMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/MIMediaLibraryCache;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM mi_media_library_cache WHERE media_library_id = :mediaLibraryId"
    .end annotation
.end method

.method public abstract insertCaches(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/MIMediaLibraryCache;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
