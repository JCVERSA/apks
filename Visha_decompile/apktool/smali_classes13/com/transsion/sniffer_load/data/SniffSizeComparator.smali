.class public Lcom/transsion/sniffer_load/data/SniffSizeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)I
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/data/SniffSizeComparator;->compare(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)I

    move-result p0

    return p0
.end method
