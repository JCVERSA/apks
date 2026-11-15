.class public Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;
.super Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$c;
    }
.end annotation


# instance fields
.field public n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

.field public o:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

.field public q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:[I

.field public u:[I

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->Q(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->N(I)V

    return-void
.end method

.method public static synthetic F(Ljava/util/List;Lrc7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->L(Ljava/util/List;Lrc7;)V

    return-void
.end method

.method public static synthetic G(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->M(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->O(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    return-void
.end method

.method public static synthetic I(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->P(Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic L(Ljava/util/List;Lrc7;)V
    .locals 8

    new-instance v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$c;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$c;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    iput v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$c;->b:I

    iput-wide v4, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$c;->a:J

    invoke-interface {p1, v0}, Lk93;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lk93;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "videoUrl is null or empty"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lk93;->onError(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lk93;->onComplete()V

    return-void
.end method

.method private synthetic Q(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/transsion/sniffer_load/DownloadManagerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "go_download"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "from"

    const-string v2, "dl_brower_rp_vlist_check_cl"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "need_scroll"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v2}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public J(Ljava/util/List;)Lmc7;
    .locals 0

    new-instance p0, Lsq9;

    invoke-direct {p0, p1}, Lsq9;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public K()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyv5;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lrq9;

    invoke-direct {v1, p0}, Lrq9;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-virtual {v0, v1}, Lmc7;->w(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$b;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic M(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->J(Ljava/util/List;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic N(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final synthetic O(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic P(Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/transsion/sniffer_load/R$id;->iv_sniff_multi_video_download_detail:I

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_video_disable_tip:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v0, Lcom/transsion/sniffer_load/R$string;->bt_file_has_task:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    invoke-static {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    new-instance v14, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getType()Ljava/lang/String;

    move-result-object v13

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/transsion/sniffer_load/okdownload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-boolean v7, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->s:Z

    iput-boolean v7, v14, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getSource()I

    move-result v7

    iput v7, v14, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getUaAgent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getCookie()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->v:Ljava/lang/String;

    iput-object v2, v14, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/transsion/sniffer_load/okdownload/a;->k(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Lcom/transsion/sniffer_load/okdownload/a;->i(I)V

    iget-object v2, v14, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {v14, v2, v7}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->inject(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lym1;->b:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v6, v2, Lcom/transsion/sniffer_load/WebActivity;

    if-eqz v6, :cond_3

    check-cast v2, Lcom/transsion/sniffer_load/WebActivity;

    iget v6, v14, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    invoke-virtual {v2, v14, v6}, Lcom/transsion/sniffer_load/WebActivity;->v1(Lcom/transsion/sniffer_load/okdownload/a;I)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v6, p1

    invoke-virtual {p0, v6, v2}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->T(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    sput-boolean v5, Lym1;->b:Z

    invoke-virtual/range {p2 .. p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, v1

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    sput v3, Lhb0;->sniffDlgType:I

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhb0;->sniffDownloadResolution:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le16;->i(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public R()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lav3;->y(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    move v4, v2

    :cond_2
    sput v4, Le16;->b:I

    sput v0, Lhb0;->num:I

    sput v2, Le16;->a:I

    iget p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    sput v1, Lhb0;->sniffDlgType:I

    invoke-static {}, Le16;->h()V

    return-void
.end method

.method public final S([I[IZ[I)V
    .locals 5

    new-instance v0, Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgets/BadgeView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    iget v1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->w:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    aget v3, p1, v2

    aget v4, p4, v2

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    aget v3, p1, v2

    :goto_0
    aget p1, p1, v1

    filled-new-array {v3, p1}, [I

    move-result-object p1

    if-eqz p3, :cond_1

    aget p3, p2, v2

    aget p4, p4, v2

    sub-int/2addr p3, p4

    goto :goto_1

    :cond_1
    aget p3, p2, v2

    :goto_1
    aget p2, p2, v1

    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1, p2, v2}, Lym1;->a(Landroid/view/ViewGroup;Landroid/view/View;[I[IZ)V

    return-void
.end method

.method public final T(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v0, :cond_2

    instance-of v2, p2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v6, Lcom/transsion/sniffer_load/R$id;->ll_multi_video_dialog_content:I

    if-ne v2, v6, :cond_3

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_download_cover:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p2, v1, v5

    div-int/2addr v2, v0

    add-int/2addr p2, v2

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->y:Z

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    :goto_0
    sub-int/2addr p2, v2

    aput p2, v1, v5

    aget p2, v1, v4

    div-int/2addr v6, v0

    add-int/2addr p2, v6

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->y:Z

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :goto_1
    sub-int/2addr p2, v0

    aput p2, v1, v4

    goto :goto_2

    :cond_2
    instance-of v2, p2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v6, Lcom/transsion/sniffer_load/R$id;->ll_multi_video_dialog_content:I

    if-ne v2, v6, :cond_3

    sget v2, Lcom/transsion/sniffer_load/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p2, v1, v5

    div-int/2addr v2, v0

    add-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr p2, v2

    aput p2, v1, v5

    aget p2, v1, v4

    div-int/2addr v6, v0

    add-int/2addr p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p2, v0

    aput p2, v1, v4

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->u:[I

    aget v2, v0, v5

    aget v3, v0, v4

    aget v6, v1, v5

    sub-int/2addr v2, p2

    add-int/2addr v6, v2

    aget v7, v1, v4

    sub-int/2addr v3, p1

    add-int/2addr v7, v3

    filled-new-array {v6, v7}, [I

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->t:[I

    iget-boolean v8, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->y:Z

    invoke-virtual {p0, v6, v7, v8, v0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->S([I[IZ[I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->t:[I

    aget v5, v0, v5

    sub-int/2addr v5, v2

    aget v0, v0, v4

    sub-int/2addr v0, v3

    filled-new-array {v5, v0}, [I

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->y:Z

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->U([I[IZ[I)V

    return-void
.end method

.method public final U([I[IZ[I)V
    .locals 5

    new-instance v0, Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgets/BadgeView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    iget v1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->w:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    aget v3, p1, v2

    aget v4, p4, v2

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    aget v3, p1, v2

    :goto_0
    aget p1, p1, v1

    filled-new-array {v3, p1}, [I

    move-result-object p1

    if-eqz p3, :cond_1

    aget p3, p2, v2

    aget p4, p4, v2

    sub-int/2addr p3, p4

    goto :goto_1

    :cond_1
    aget p3, p2, v2

    :goto_1
    aget p2, p2, v1

    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1, p2, v1}, Lym1;->a(Landroid/view/ViewGroup;Landroid/view/View;[I[IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "#FF575C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->w:I

    if-eqz p1, :cond_0

    const-string v0, "page"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->r:Ljava/lang/String;

    const-string v0, "endPostion"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->t:[I

    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->u:[I

    const-string v0, "BUNDLE_KEY_DIG_STYLE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p0, Lcom/transsion/sniffer_load/R$layout;->dialog_for_sniff_mutil_video_download:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    const-string v1, "sniff_dialog"

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$4;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$4;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;->onStart()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->R()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iget v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    invoke-virtual {p2, v0}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->r(I)V

    iget p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$layout;->rv_header_sniff_video_resolution_download:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$layout;->rv_header_sniff_multi_video_download:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lnq9;

    invoke-direct {v2, p0}, Lnq9;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-static {v0, v2}, Lcom/transsion/widgets/GestureUtil;->scrollGesture(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->rv_sniff_multi_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->r:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Loq9;

    invoke-direct {v2, p0}, Loq9;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-virtual {p2, v0, v2}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    new-instance v0, Lpq9;

    invoke-direct {v0, p0, p1}, Lpq9;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget v2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->x:I

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->n:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getSniffVideoInfo(I)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_download_cover:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$a;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$a;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_2
    sget p2, Lcom/transsion/sniffer_load/R$id;->ll_bottom_go:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lqq9;

    invoke-direct {v1, p0}, Lqq9;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->K()V

    sget p2, Lcom/transsion/sniffer_load/R$id;->bv_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p2

    if-gtz p2, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    new-instance v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Lcom/transsion/widgets/BadgeView;)V

    const-string p0, "sniff_dialog"

    invoke-virtual {p2, p0, v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->v(Ljava/lang/String;Lmf7;)V

    return-void
.end method
