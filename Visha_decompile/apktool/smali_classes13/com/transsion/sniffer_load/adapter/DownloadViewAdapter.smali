.class public abstract Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput-object p3, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->o:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->p:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->p:I

    return p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    return-void
.end method

.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    new-instance v0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;-><init>(Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;ILcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(ZLcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
    .locals 7

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "bookmark_name"

    const-string v2, "analysis_name"

    if-eqz p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bookmark_address"

    const-string v4, "analysis_address"

    if-eqz p1, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_link()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p1, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_link()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-nez p1, :cond_4

    const-string p2, "TYPE"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "dl_analysis_cl"

    goto :goto_2

    :cond_5
    const-string p1, "dl_bm_cl"

    :goto_2
    const-wide/16 v1, 0x246c

    invoke-static {v0, p0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public i(Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getIs_bt()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->isBt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;->getService()Lcom/transsion/moduleservice/IBtDownloadService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_link()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sniffer_load/sniffservice/SniffTorrentUtil;->isTorrentSource(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_link()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/transsion/moduleservice/IBtDownloadService;->sniffTorrent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->isWhatsApp()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lraa;->g(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    sget p0, Lcom/transsion/sniffer_load/R$string;->whats_app_not_installed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Likc;->c(Landroid/content/Context;ZZ)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->j(Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;Z)V

    return-void

    :cond_3
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_url"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_link()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "need_new_web"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "web_url_from"

    const-string v1, "dl_brower_rpfloating_reopen_cl"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getIs_bt()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->isBt(I)Z

    move-result v0

    const-string v2, "is_bt"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "download_content"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_download_contents()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 p1, 0x4da

    invoke-static {p2, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    invoke-static {v1}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;Z)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->h(ZLcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    return-void
.end method
