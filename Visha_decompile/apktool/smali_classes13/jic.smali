.class public interface abstract Ljic;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addWebPreviewRecord(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)J
    .annotation build Landroidx/room/Insert;
        entity = Lcom/transsion/sniffer_load/data/WebPreviewRecord;
    .end annotation
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM WebPreviewRecord"
    .end annotation
.end method

.method public abstract deleteItem(J)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM WebPreviewRecord WHERE id =:id"
    .end annotation
.end method

.method public abstract getAllByAsc()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * FROM WebPreviewRecord ORDER BY id ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/sniffer_load/data/WebPreviewRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByDESC()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * FROM WebPreviewRecord ORDER BY id DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/sniffer_load/data/WebPreviewRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllWebPreviewRecordDESC()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM WebPreviewRecord  ORDER BY id DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/sniffer_load/data/WebPreviewRecord;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V
    .annotation build Landroidx/room/Update;
        entity = Lcom/transsion/sniffer_load/data/WebPreviewRecord;
    .end annotation
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation build Landroidx/room/Update;
        entity = Lcom/transsion/sniffer_load/data/WebPreviewRecord;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/sniffer_load/data/WebPreviewRecord;",
            ">;)V"
        }
    .end annotation
.end method
