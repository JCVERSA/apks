.class public interface abstract Ly8d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM default_ad_room"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM default_ad_room WHERE ad_request_ver < :version"
    .end annotation
.end method

.method public abstract a(Lhed;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE default_ad_room SET file_path = \'\' WHERE file_path LIKE \'%\' || :filePath || \'.0\'"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM default_ad_room WHERE ad_creative_id = :creativeId AND codeSeatId = :codeSeatId"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE default_ad_room SET displayed_times = :displayedTimes, displayed_date = :displayedDate WHERE ad_creative_id = :adCreativeId AND codeSeatId = :codeSeatId"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE default_ad_room SET file_path = :filepath WHERE ad_creative_id = :adCreativeId AND codeSeatId = :codeSeatId"
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM default_ad_room WHERE codeSeatId NOT IN (:codeSeatIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM default_ad_room"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM default_ad_room WHERE codeSeatId = :codeSeatId AND ad_request_ver < (SELECT MAX(ad_request_ver) FROM default_ad_room WHERE codeSeatId = :codeSeatId)"
    .end annotation
.end method
