.class public Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;
    }
.end annotation


# instance fields
.field public N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

.field public O:Landroid/view/View;

.field public P:Landroidx/recyclerview/widget/RecyclerView;

.field public Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

.field public R:Ljava/lang/String;

.field public S:Z

.field public T:[I

.field public U:[I

.field public V:Ljava/lang/String;

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static C0(Landroid/content/Context;ZLjava/lang/String;[I[IZLjava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_client"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "page"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "endPostion"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "size"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "is_rtl"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "ori_url"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "BUNDLE_KEY_DIG_STYLE_TYPE"

    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->x0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->w0(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->t0()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->v0(I)V

    return-void
.end method

.method public static synthetic j0(Ljava/util/List;Lrc7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->r0(Ljava/util/List;Lrc7;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/transsion/sniffer_load/okdownload/a;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->u0(Lcom/transsion/sniffer_load/okdownload/a;Z)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->s0(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    return-object p0
.end method

.method public static synthetic r0(Ljava/util/List;Lrc7;)V
    .locals 8

    new-instance v0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;-><init>()V

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

    iput v2, v0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;->b:I

    iput-wide v4, v0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$c;->a:J

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


# virtual methods
.method public A0(Lcom/transsion/sniffer_load/okdownload/a;I)V
    .locals 1

    invoke-static {p2}, Le16;->g(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->V:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->inject(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Le6b;

    new-instance v0, Lzq9;

    invoke-direct {v0, p0, p1}, Lzq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/transsion/sniffer_load/okdownload/a;)V

    invoke-direct {p2, p0, v0}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Le6b;->b(Z)V

    return-void
.end method

.method public final B0()V
    .locals 6

    new-instance v0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iget v1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->X:I

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->r(I)V

    iget v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->X:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/transsion/sniffer_load/R$layout;->rv_header_sniff_video_resolution_download:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/transsion/sniffer_load/R$layout;->rv_header_sniff_multi_video_download:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->O:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->close:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Luq9;

    invoke-direct {v3, p0}, Luq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-static {v1, v3}, Lcom/transsion/widgets/GestureUtil;->scrollGesture(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->O:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->rv_sniff_multi_video:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->R:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    iget-object v1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Z:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    new-instance v1, Lvq9;

    invoke-direct {v1, p0}, Lvq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    new-instance v1, Lwq9;

    invoke-direct {v1, p0}, Lwq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->X:I

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getSniffVideoInfo(I)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget v3, Lcom/transsion/sniffer_load/R$id;->iv_download_cover:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$a;

    invoke-direct {v3, p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$a;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->O:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->ll_bottom_go:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lxq9;

    invoke-direct {v2, p0}, Lxq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->p0()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->O:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->bv_count:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v2

    if-gtz v2, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$2;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/transsion/widgets/BadgeView;)V

    const-string p0, "sniff_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->v(Ljava/lang/String;Lmf7;)V

    return-void
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$layout;->dialog_for_sniff_mutil_video_download:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->O:Landroid/view/View;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Z:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    const-string v0, "#FF575C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->W:I

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->q0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->B0()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->O:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0(Ljava/util/List;)Lmc7;
    .locals 0

    new-instance p0, Lar9;

    invoke-direct {p0, p1}, Lar9;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    const-string v1, "sniff_dialog"

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->i(Ljava/lang/String;)V

    new-instance v0, Ltq9;

    invoke-direct {v0, p0}, Ltq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onStart()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->z0()V

    return-void
.end method

.method public p0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

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
    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

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

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lyq9;

    invoke-direct {v1, p0}, Lyq9;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

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

    new-instance v1, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity$b;-><init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final q0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_client"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->S:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->R:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "endPostion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->T:[I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->U:[I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_rtl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Y:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BUNDLE_KEY_DIG_STYLE_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->X:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ori_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->V:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->R:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    return-void
.end method

.method public final synthetic s0(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->o0(Ljava/util/List;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic t0()V
    .locals 5

    iget-object p0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

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

.method public final synthetic u0(Lcom/transsion/sniffer_load/okdownload/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z

    :cond_0
    return-void
.end method

.method public final synthetic v0(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    :cond_0
    return-void
.end method

.method public final synthetic w0(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->R:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    iget-object p0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->Q:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic x0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 12

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_sniff_multi_video_download_detail:I

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->download_video_disable_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/transsion/sniffer_load/R$string;->bt_file_has_task:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->X:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    new-instance v11, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getType()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/transsion/sniffer_load/okdownload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-boolean v4, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->S:Z

    iput-boolean v4, v11, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getSource()I

    move-result v4

    iput v4, v11, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getUaAgent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getCookie()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v11, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->V:Ljava/lang/String;

    iput-object p2, v11, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v11, p2}, Lcom/transsion/sniffer_load/okdownload/a;->k(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/transsion/sniffer_load/okdownload/a;->i(I)V

    sput-boolean v3, Lym1;->b:Z

    iget p2, v11, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    invoke-virtual {p0, v11, p2}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->A0(Lcom/transsion/sniffer_load/okdownload/a;I)V

    sput-boolean v2, Lym1;->b:Z

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p0

    add-int/2addr p3, p0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    sput v0, Lhb0;->sniffDlgType:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lhb0;->sniffDownloadResolution:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le16;->i(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final synthetic y0(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/sniffer_load/DownloadManagerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const-string v1, "dl_brower_rp_vlist_check_cl"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "go_download"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "need_scroll"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v1}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public z0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->N:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

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

    iget p0, p0, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->X:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    sput v1, Lhb0;->sniffDlgType:I

    invoke-static {}, Le16;->h()V

    return-void
.end method
