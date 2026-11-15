.class public interface abstract Lzf7;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAll()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM online_history"
    .end annotation
.end method

.method public abstract deleteHistories(Ljava/util/List;)I
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteUserHistory(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM online_history where user_id=:userId"
    .end annotation
.end method

.method public abstract getAllHistoryBean()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHistoryBeanData()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHistoryByVideoId(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history  where video_id=:vid ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHistoryByVideoIdIntact(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history  where video_id=:vid and is_intact = 1 ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLiveHistoryBean()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHistoryBean(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history where serialId=:id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHistoryBeanCount(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history ORDER BY last_watch_time DESC LIMIT:count"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHistoryUserBeanBySourceId(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history where source_id=:id"
    .end annotation

    .annotation build Landroidx/room/RewriteQueriesToDropUnusedColumns;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getYoutubeHistoryBeans()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_history where is_youtube=1"
    .end annotation

    .annotation build Landroidx/room/RewriteQueriesToDropUnusedColumns;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertHistories(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
