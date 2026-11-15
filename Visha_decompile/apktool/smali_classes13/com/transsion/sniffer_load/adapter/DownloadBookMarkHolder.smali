.class public final Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;
.super Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder<",
        "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;",
        "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;",
        "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;)V",
        "data",
        "Lzfb;",
        "d",
        "(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V",
        "",
        "isAnalysis",
        "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
        "bookmark",
        "f",
        "(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V",
        "Landroid/widget/TextView;",
        "p",
        "Landroid/widget/TextView;",
        "mTvTitle",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "q",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mRvItem",
        "Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;",
        "r",
        "Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;",
        "mAdapter",
        "s",
        "a",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final s:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$a;

.field public static final t:I


# instance fields
.field public p:Landroid/widget/TextView;

.field public q:Landroidx/recyclerview/widget/RecyclerView;

.field public r:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->s:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$a;

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_item_bookmark:I

    sput v0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "itemView"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->p:Landroid/widget/TextView;

    sget p1, Lcom/transsion/sniffer_load/R$id;->rv_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->e(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final e(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.transsion.dbdata.beans.sniff.Bookmark"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    if-eqz p0, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->f(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V

    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "web_url"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "need_new_web"

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "web_url_from"

    const-string p2, "dl_bm_cl"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 p2, 0x4da

    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->d(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;->b(Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_download_bookmark:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getData_remark_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getWebsite_type()I

    move-result p2

    new-instance v3, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$bindData$2$1;

    invoke-direct {v3, v0, v1, v2, p2}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder$bindData$2$1;-><init>(ILjava/util/List;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->r:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;

    new-instance p2, Lcy2;

    invoke-direct {p2, p1, p0}, Lcy2;-><init>(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;)V

    invoke-virtual {v3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->r:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_3
    return-void
.end method

.method public final f(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 7

    const-string p0, "bookmark"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p1, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "TYPE"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, v2, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

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
