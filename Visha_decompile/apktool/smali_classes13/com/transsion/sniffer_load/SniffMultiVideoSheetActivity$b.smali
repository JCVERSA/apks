.class public Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;->b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;->b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    iget-object v0, v0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    iget-wide v1, p1, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setSize(J)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;->b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->n0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    move-result-object v0

    iget p1, p1, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;->b:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;->b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->n0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;->a(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
