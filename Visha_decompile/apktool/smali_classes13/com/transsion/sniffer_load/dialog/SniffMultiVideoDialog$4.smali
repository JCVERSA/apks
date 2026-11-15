.class Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$4;->this$0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$4;->this$0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "num"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "num_1"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, v4, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "dl_brower_rp_vlist_confail_p"

    const-wide/16 v3, 0x246c

    invoke-static {v2, v0, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method
