.class public interface abstract Lsg7;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeAllUploadStatus()V
    .annotation build Landroidx/room/Query;
        value = "UPDATE online_user_history SET is_uploaded = 0"
    .end annotation
.end method

.method public abstract deleteAll()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM online_user_history"
    .end annotation
.end method

.method public abstract deleteHistories(Ljava/util/List;)I
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteSyncUserHistory()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM online_user_history where is_uploaded == 0x00 or is_uploaded == 0x02"
    .end annotation
.end method

.method public abstract deleteUserHistory(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM online_user_history where user_id=:userId"
    .end annotation
.end method

.method public abstract deleteUserHistoryVideo(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM online_user_history where serialId=:sid"
    .end annotation
.end method

.method public abstract getAllHistoryByVideoId(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history  where video_id=:vid ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHistoryUserBean()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHistoryUserBeanByUserId(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history where user_id=:userId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHistoryUserBeanData()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLiveHistoryUserBean()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllLiveHistoryUserBeanList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLiveHistoryUserBeanNotDelete()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history where is_uploaded <= 1  ORDER BY last_watch_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHistoryUserBean(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history where serialId=:id"
    .end annotation

    .annotation build Landroidx/room/RewriteQueriesToDropUnusedColumns;
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

.method public abstract getHistoryUserBeanBySourceId(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history where source_id=:id"
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

.method public abstract getHistoryUserBeanByVideoId(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history where video_id=:video_id"
    .end annotation

    .annotation build Landroidx/room/RewriteQueriesToDropUnusedColumns;
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

.method public abstract getHistoryUserBeanByVideoIdIntact(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history where video_id=:video_id and is_intact == 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHistoryUserBeanCount(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM online_user_history ORDER BY last_watch_time DESC LIMIT:count"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
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
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
