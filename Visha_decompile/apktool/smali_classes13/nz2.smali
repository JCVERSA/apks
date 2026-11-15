.class public interface abstract Lnz2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addDownloadHistory(Lcom/transsion/sniffer_load/data/DownloadHistory;)V
    .annotation build Landroidx/room/Insert;
        entity = Lcom/transsion/sniffer_load/data/DownloadHistory;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract getDownloadHistory(Ljava/lang/String;)Lcom/transsion/sniffer_load/data/DownloadHistory;
    .annotation build Landroidx/room/Query;
        value = "select * FROM DownloadHistory WHERE mediaId=:id"
    .end annotation
.end method
