.class public interface abstract Lbr9;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM url_js"
    .end annotation
.end method

.method public abstract getAllSniffUrls()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM url_js"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSniffScriptEntity(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM url_js WHERE script_key = :script_key"
    .end annotation
.end method

.method public abstract insert(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertAll(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSniffScriptEntity(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
