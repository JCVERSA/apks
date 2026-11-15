.class public Lcom/transsion/sniffer_load/fragment/SearchFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lag5$e;


# instance fields
.field public l:Lcom/transsion/widgetslib/widget/SearchBar;

.field public m:Ljava/util/List;

.field public n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

.field public o:Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Landroid/widget/TextView;

.field public r:Z

.field public s:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

.field public w:Ljava/util/Map;

.field public x:Ljava/util/Map;

.field public final y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->w:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->x:Ljava/util/Map;

    new-instance v0, Lcom/transsion/sniffer_load/fragment/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment$4;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 3

    const-string p1, "dl_brower_back_cl"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x4dd

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static D0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)Lcom/transsion/sniffer_load/fragment/SearchFragment;
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->B0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->z0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m0(Lcom/transsion/sniffer_load/fragment/SearchFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/sniffer_load/fragment/SearchFragment;)Lcom/transsion/widgetslib/widget/SearchBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    return-object p0
.end method

.method public static bridge synthetic o0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r0(Z)V

    return-void
.end method

.method private r0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->t:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->t:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->t:Landroid/view/View;

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static synthetic y0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)I
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public final synthetic B0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->H0(Ljava/lang/String;)V

    invoke-static {p1}, Lp06;->R(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->E0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->E0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le16;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public C0()V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "history_num"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->q0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "history_address"

    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :cond_1
    invoke-virtual {v1, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->q0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "dl_brower_show"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public final E0(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;->getService()Lcom/transsion/moduleservice/IBtDownloadService;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sniffer_load/sniffservice/SniffTorrentUtil;->isTorrentSource(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, ""

    invoke-interface {v0, v1, p0, p1, v2}, Lcom/transsion/moduleservice/IBtDownloadService;->sniffTorrent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->H0(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "history_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v2, "dl_brower_history_cl"

    const-wide/16 v3, 0x246c

    invoke-static {v1, v0, v2, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u0()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "dl_brower_cycle_search"

    const-string v3, "web_url_from"

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "search_result_url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v2, 0x4dd

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->F0(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "web_url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u0()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x4da

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->F0(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :try_start_0
    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f()Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SearchAnimManager exitSearch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final F0(Z)V
    .locals 2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final G0(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/sniffer_load/SearchActivity;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyBottomMarginNavInset(Landroid/view/View;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyBottomMarginNavInset(Landroid/view/View;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public H0(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "search_url_history"

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public initList()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_url_history"

    invoke-static {v0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->C0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->rv_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/adapter/HistoryAdapter;-><init>()V

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r0(Z)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    new-instance v3, Lz49;

    invoke-direct {v3, p0}, Lz49;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/transsion/sniffer_load/R$layout;->rv_search_history_header:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/sniffer_load/R$id;->iv_clear_history:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, La59;

    invoke-direct {v4, p0}, La59;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;)I

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/transsion/sniffer_load/R$layout;->rv_search_history_footer:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->all_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lb59;

    invoke-direct {v2, p0}, Lb59;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFooterView(Landroid/view/View;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAllFooterView()V

    :goto_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAllFooterView()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAllHeaderView()V

    :cond_3
    return-void
.end method

.method public k(I)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->G0(IZ)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->s:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p1

    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->G0(IZ)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->search_bar_title:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lag5;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lag5;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_web_search:I

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->search_bar_file:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackView()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotationY(F)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    const v0, 0x800013

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/view/View;->setTextDirection(I)V

    sget p2, Lcom/transsion/magicvideo/R$id;->tags:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->tag_tip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->q:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getLinearRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/InsetDrawable;

    const/16 v0, 0xea

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v0, Lx49;

    invoke-direct {v0, p0}, Lx49;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "web_start_url"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->x:Ljava/util/Map;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "mmkv_search_keys"

    invoke-virtual {p2, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-static {p2, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->t0(Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    :cond_2
    const-class p2, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->s:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v0, Lcom/transsion/sniffer_load/fragment/SearchFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment$a;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->addTextWatcher(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2, v0}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    new-instance v0, Ly49;

    invoke-direct {v0, p0}, Ly49;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->btn_privacy_browse:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyBottomMarginNavInset(Landroid/view/View;I)V

    sget p2, Lcom/transsion/magicvideo/R$id;->tv_privacy_browse:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/magicvideo/R$string;->download_privacy_browsing_turn_off:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/transsion/magicvideo/R$string;->download_privacy_browsing_turn_on:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->initList()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->s0()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, p0}, Lag5;->k(Landroid/app/Activity;Lag5$e;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->u0()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance p2, Lcom/transsion/sniffer_load/fragment/SearchFragment$3;

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment$3;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->y:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method public p0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_url_history"

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public q0(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "web_start_url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->v:Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l:Lcom/transsion/widgetslib/widget/SearchBar;

    sget v0, Lcom/transsion/magicvideo/R$string;->download_search_hint:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t0(Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getHotKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getHotKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getHotKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/magicvideo/R$id;->tags:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->o:Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getHotKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;->getDataList()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lc59;

    invoke-direct {v2}, Lc59;-><init>()V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->setSort(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->o:Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->o:Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->w:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->x:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->o:Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

    new-instance v0, Ld59;

    invoke-direct {v0, p0}, Ld59;-><init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-static {}, Le16;->c()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->q:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final u0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "page_tag"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_WebActivity"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->E0(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic w0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->p0()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAllHeaderView()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n:Lcom/transsion/sniffer_load/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAllFooterView()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r0(Z)V

    const-string p0, "dl_brower_clear_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic x0(Landroid/view/View;)V
    .locals 0

    const-string p1, "dl_brower_allhis_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->r:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->initList()V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->F0(Z)V

    return-void
.end method

.method public final synthetic z0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->o:Lcom/transsion/sniffer_load/adapter/HotKeyAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->x:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->E0(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment;->w:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, ","

    invoke-virtual {p0, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    aget-object p3, p0, p3

    const-string v0, "queue"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "content"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    const-string p1, "index"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dl_brower_hot_cl"

    invoke-static {p0, p2}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
