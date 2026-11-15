.class public abstract Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method
