.class public Lcom/transsion/sniffer_load/WebActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/playercommon/activities/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;"
    }
.end annotation


# static fields
.field public static K0:I = 0x0

.field public static L0:Ljava/lang/String; = null

.field public static M0:Ljava/lang/String; = "dl_bm_cl"


# instance fields
.field public A0:Z

.field public B0:Ljava/util/ArrayList;

.field public C0:I

.field public D0:Z

.field public E0:Ljava/util/ArrayList;

.field public F0:Landroid/widget/FrameLayout;

.field public G0:Landroid/widget/LinearLayout;

.field public H0:Z

.field public I0:Ljava/lang/Runnable;

.field public J0:Ljava/lang/Runnable;

.field public N:[I

.field public O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

.field public P:Lnic;

.field public Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

.field public R:Landroid/widget/ImageView;

.field public S:Ljava/lang/String;

.field public T:I

.field public U:I

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/FrameLayout;

.field public X:Lcom/google/android/material/appbar/AppBarLayout;

.field public Y:Landroid/widget/ImageView;

.field public Z:Landroid/widget/ImageView;

.field public a0:Landroid/widget/TextView;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public final e0:Ljava/util/Map;

.field public f0:Lcom/transsion/widgets/BadgeView;

.field public g0:Z

.field public h0:Landroid/graphics/Bitmap;

.field public i0:Landroid/widget/ImageView;

.field public j0:Landroid/widget/ImageView;

.field public k0:Landroid/widget/ImageView;

.field public l0:Landroid/widget/ImageView;

.field public m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field public n0:Z

.field public o0:J

.field public p0:J

.field public q0:J

.field public r0:Landroid/widget/LinearLayout;

.field public s0:Z

.field public t0:J

.field public u0:I

.field public v0:Z

.field public w0:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

.field public x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

.field public z0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->N:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->e0:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->n0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->A0:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    iput v0, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->D0:Z

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->H0:Z

    new-instance v0, Lcom/transsion/sniffer_load/WebActivity$4;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/WebActivity$4;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->I0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/sniffer_load/WebActivity$5;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/WebActivity$5;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->J0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->d1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private A1()V
    .locals 3

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->l0:Landroid/widget/ImageView;

    const v2, 0x800035

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->l0:Landroid/widget/ImageView;

    const v2, 0x800055

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    :goto_0
    sget v1, Lcom/transsion/sniffer_load/R$menu;->more_item_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$id;->turn_on_privacy_browse:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$id;->turn_off_privacy_browse:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    :goto_1
    new-instance v1, Lihc;

    invoke-direct {v1, p0}, Lihc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    const-string p0, "dl_brower_rpfloating_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->k1()V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/sniffer_load/WebActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->j1(I)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->f1(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/sniffer_load/WebActivity;)Lcom/transsion/widgets/BadgeView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->f0:Lcom/transsion/widgets/BadgeView;

    return-object p0
.end method

.method public static bridge synthetic F0(Lcom/transsion/sniffer_load/WebActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->d0:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic G0(Lcom/transsion/sniffer_load/WebActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->b0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic H0(Lcom/transsion/sniffer_load/WebActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic I0(Lcom/transsion/sniffer_load/WebActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->L0(Z)V

    return-void
.end method

.method public static bridge synthetic J0(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->C1()V

    return-void
.end method

.method public static synthetic g1(Z)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->z:Z

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "download_open_notice"

    invoke-static {v0, v1, p0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic m1(Z)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->A:Z

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "web_open_notice"

    invoke-static {v0, v1, p0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/WebActivity;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->w1(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    return-void
.end method

.method public static synthetic q0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebActivity;->m1(Z)V

    return-void
.end method

.method public static synthetic r0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebActivity;->g1(Z)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->h1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/sniffer_load/WebActivity;Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->i1(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/sniffer_load/WebActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/sniffer_load/okdownload/a;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WebActivity;->l1(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/sniffer_load/okdownload/a;Z)V

    return-void
.end method

.method private u1()V
    .locals 2

    const-string v0, "dl_bm_cl"

    sput-object v0, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "web_url_from"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    :cond_0
    const-string p0, "address"

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    const-string v1, "dl_brower_rp_show"

    invoke-static {v1, p0, v0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->n1()V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/String;Lcom/transsion/sniffer_load/WebActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WebActivity;->c1(Ljava/lang/String;Lcom/transsion/sniffer_load/WebActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/sniffer_load/WebActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->e1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/sniffer_load/WebActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->o1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->b1(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lnic;->j(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-static {p2}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-static {p2}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final B1()V
    .locals 2

    const-string v0, "dl_brower_rp_ldend_ssguide_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/sniffer_load/SSYoutubeDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4e0

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    return-void
.end method

.method public C(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WebActivity;->E1(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "favicon width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " icon width:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceivedIcon"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_WebActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WebActivity;->E1(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final C1()V
    .locals 2

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-static {p0, v0, v1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->m0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->F()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-static {p0, v0, v1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->j0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final D1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->onStart()V

    :cond_1
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->G0:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final E1(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->m0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->j0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lnic;->h(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final K0(Landroid/widget/ImageView;)V
    .locals 4

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    const-string v3, "address"

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "dl_brower_rp_bm_cl"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public final L0(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->v0:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/transsion/sniffer_load/WebActivity;->u0:I

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/WebActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/sniffer_load/WebActivity$c;-><init>(Lcom/transsion/sniffer_load/WebActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final M0(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    const-string v5, "multi_web"

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->M(Landroid/app/Activity;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;Ljava/lang/String;Z)Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lz9;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "visha_WebActivity"

    const-string p1, "the same webview"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "multi_web"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lz9;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lz9;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public N0()V
    .locals 3

    invoke-static {p0}, Le07;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "vd_dl_net_show"

    invoke-static {v0, v1}, Ldz5;->b(ILjava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/sniffer_load/R$string;->eror_no_net:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->setting_overlay_screen_ok:I

    new-instance v2, Lcom/transsion/sniffer_load/WebActivity$b;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/WebActivity$b;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_no_network_cancel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    :cond_0
    return-void
.end method

.method public final O0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/sniffer_load/MultiWebDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4dd

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    return-void
.end method

.method public P0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->x1()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/sniffer_load/R$anim;->pre_hold:I

    sget v0, Lcom/transsion/sniffer_load/R$anim;->web_out:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public final Q0(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->a0:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final R0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "download_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->E0:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-static {}, Lgp3;->b()Lgp3;

    move-result-object v0

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    new-instance v2, Lcom/transsion/sniffer_load/WebActivity$d;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/WebActivity$d;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, v1, v2}, Lgp3;->a(Ljava/lang/String;Lgp3$b;)V

    return-void
.end method

.method public final T0(Landroid/webkit/WebView$HitTestResult;)Landroid/os/Message;
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/WebActivity$e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/sniffer_load/WebActivity$e;-><init>(Lcom/transsion/sniffer_load/WebActivity;Landroid/os/Looper;Landroid/webkit/WebView$HitTestResult;)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final U0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "web_url"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "visha_WebActivity"

    const-string p1, "getUrl invalid param"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public V0()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/sniffer_load/WebActivity;->t0:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "visha_WebActivity"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Loa1;->a()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public W0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    new-instance v1, Lrhc;

    invoke-direct {v1, p0}, Lrhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final X0(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lmhc;

    invoke-direct {v1, p0, p1}, Lmhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lnhc;

    invoke-direct {v0, p0}, Lnhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final Y0(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".youtube.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return p0
.end method

.method public Z0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a1(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v8, p1

    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    const-string v0, "http://"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v10, v8

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v11, v9

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_2
    const-string v0, "https://"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v12, v8

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_3
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v13, v9

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :goto_4
    const-string v0, "^(http://|https://)"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a()Lig0;

    move-result-object v1

    invoke-interface {v1, v0}, Lig0;->getBookmarks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSameUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " noSlashPostfixUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " httpPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " httpPrefixNoSlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " httpsPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " httpsPrefixNoSlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " noPreFix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " noPreFixNoSlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_WebActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final synthetic b1(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public final synthetic c1(Ljava/lang/String;Lcom/transsion/sniffer_load/WebActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->a1(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic d1(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnic;->o()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1}, Lnic;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebUrl()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->z0:Ljava/lang/String;

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->q1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic e1(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "web_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->q1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic f1(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->z1(I)V

    return-void
.end method

.method public g(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object p3, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sput-object p2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted, url : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "visha_WebActivity"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->X0(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "address"

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p3}, Lnic;->p()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "num"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "from"

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p3, Lcom/transsion/playercommon/core/MainApp;->p:Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "status"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "dl_brower_rp_ldstart"

    invoke-static {p3, p1}, Lhb0;->markTrackMap(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/WebActivity;->o0:J

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1, p2}, Lnic;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->D0:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->S0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic h1(Ljava/lang/Integer;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1}, Lnic;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->Q0(I)V

    return-void
.end method

.method public final synthetic i1(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "visha_WebActivity"

    const-string p1, "webPreviewRecord is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->M0(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->S:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v0}, Lz9;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v0}, Lz9;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->w1(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p0}, Lnic;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Lnic;->z(I)V

    return-void
.end method

.method public bridge synthetic j(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WebActivity;->v1(Lcom/transsion/sniffer_load/okdownload/a;I)Z

    move-result p0

    return p0
.end method

.method public final synthetic j1(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->z1(I)V

    return-void
.end method

.method public final synthetic k1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->f0:Lcom/transsion/widgets/BadgeView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->N:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/WebActivity;->T:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p0}, Ld39;->d(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/sniffer_load/WebActivity;->U:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->N:[I

    invoke-virtual {v0, v1}, Lz9;->v([I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget v1, p0, Lcom/transsion/sniffer_load/WebActivity;->T:I

    iget p0, p0, Lcom/transsion/sniffer_load/WebActivity;->U:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lz9;->w([I)V

    :cond_0
    return-void
.end method

.method public l(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->e0:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->n0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->F()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->k0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic l1(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/sniffer_load/okdownload/a;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public final synthetic n1()V
    .locals 4

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    const-string v1, "web_open_notice"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->A:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->sniff_content_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/sniffer_load/R$string;->sniff_content_notice_pre:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/sniffer_load/R$string;->sniff_content_notice:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$string;->notice:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lehc;

    invoke-direct {v3}, Lehc;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lf27;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf27$c;)V

    :cond_1
    return-void
.end method

.method public o(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/transsion/sniffer_load/WebActivity;->S:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1, p2}, Lnic;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic o1(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->history:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "dl_brower_rp_more_history_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4d9

    invoke-static {p1, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->bookmark:I

    if-ne v0, v1, :cond_1

    const-string p1, "dl_brower_rp_more_bm_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4d8

    invoke-static {p1, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->turn_on_privacy_browse:I

    const/16 v3, 0x8

    const/4 v4, 0x2

    const-string v5, "private_browsing"

    if-ne v0, v1, :cond_3

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    invoke-static {p0, v5, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_not_save_search_and_view_history:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {v4, p1}, Ldz5;->f(II)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->Z:Landroid/widget/ImageView;

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz p1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->turn_off_privacy_browse:I

    if-ne p1, v0, :cond_5

    sput-boolean v2, Lcom/transsion/playercommon/core/MainApp;->p:Z

    invoke-static {p0, v5, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget p1, Lcom/transsion/sniffer_load/R$string;->load_privacy_browsing_setting_hint:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {v4, v2}, Ldz5;->f(II)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->Z:Landroid/widget/ImageView;

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz p1, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->n0:Z

    if-eqz p3, :cond_2

    const/16 v0, 0x4d9

    const-string v1, "url"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lz9;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lz9;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4dd

    if-ne p1, v0, :cond_2

    const-string v0, "search_result_url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v0, p3}, Lz9;->o(Ljava/lang/String;)V

    sput-object p3, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    :cond_2
    :goto_0
    const/16 p3, 0x4e0

    if-ne p1, p3, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    const-string p1, "https://api.vishavideo.com/#/ssyoutube"

    invoke-virtual {p0, p1}, Lz9;->o(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->A0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks()Z

    move-result v0

    const-string v2, "web_activity_back"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebActivity;->P0(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz9;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v0}, Lz9;->l()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebActivity;->P0(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->x1()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x4da

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebActivity;->q1(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebActivity;->P0(Z)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_refresh:I

    if-ne p1, v0, :cond_1

    const-string p1, "dl_brower_rp_refresh_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p0}, Lz9;->t()V

    goto/16 :goto_3

    :cond_1
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_download_manager:I

    const-string v1, "from"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/sniffer_load/DownloadManagerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "go_download"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "dl_brower_rp_dl_cl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "support_theme_background"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p1

    const-string v1, "\u6d4f\u89c8\u5668"

    invoke-static {p1, v1}, Ls16;->c(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p1

    const-string v1, "num"

    invoke-static {p0, v0, v1, p1}, Lr06;->f(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_2
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_add_bookmark:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->D(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->S:Ljava/lang/String;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->e0:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lb23;->i(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->A(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->K0(Landroid/widget/ImageView;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    const-string v3, "address"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-wide/16 v4, 0x246c

    const-string v1, "dl_brower_rp_bm_cl"

    invoke-static {v0, p1, v1, v4, v5}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {v1, v2, p0, v3, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_more:I

    if-ne p1, v0, :cond_5

    const-string p1, "dl_brower_rp_more_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WebActivity;->A1()V

    goto/16 :goto_3

    :cond_5
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_main_page:I

    if-ne p1, v0, :cond_6

    const-string p1, "dl_brower_rp_home_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    const-string p1, "https://www.google.com"

    invoke-virtual {p0, p1}, Lz9;->o(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_goright:I

    if-ne p1, v0, :cond_7

    const-string p1, "dl_brower_rp_next_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p0}, Lz9;->m()V

    goto/16 :goto_3

    :cond_7
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_goleft:I

    if-ne p1, v0, :cond_8

    const-string p1, "dl_brower_rp_previous_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p0}, Lz9;->l()V

    goto/16 :goto_3

    :cond_8
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_back:I

    if-ne p1, v0, :cond_9

    const-string p1, "dl_brower_rp_retract_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "web_activity_back"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/transsion/sniffer_load/WebActivity;->P0(Z)V

    goto/16 :goto_3

    :cond_9
    sget v0, Lcom/transsion/sniffer_load/R$id;->edit_url:I

    const/16 v4, 0x4dd

    const-string v5, "page_tag"

    const-string v6, "web_start_url"

    const-class v7, Lcom/transsion/sniffer_load/SearchActivity;

    const-string v8, "visha_WebActivity"

    const-string v9, "dl_brower_rp_input_cl"

    if-ne p1, v0, :cond_a

    invoke-static {v9}, Lp06;->d0(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v4, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto/16 :goto_3

    :cond_a
    sget v0, Lcom/transsion/sniffer_load/R$id;->edit_url_open:I

    if-ne p1, v0, :cond_b

    invoke-static {v9}, Lp06;->d0(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v4, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto/16 :goto_3

    :cond_b
    sget v0, Lcom/transsion/sniffer_load/R$id;->ll_multi_web:I

    if-ne p1, v0, :cond_d

    const-string p1, "dl_brower_rp_multi_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p1}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p0, "onClick multi_web: current webview is null"

    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {v1, v0}, Lnic;->g(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->O0()V

    goto/16 :goto_3

    :cond_d
    sget v0, Lcom/transsion/sniffer_load/R$id;->fl_sniffer_download:I

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->V0()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/WebActivity;->t0:J

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->s0:Z

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageDataForMarkPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lp06;->n(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->s0:Z

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p1

    const-string v0, "download_open_notice"

    invoke-static {p1, v0, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->z:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_content_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lpp3;->c:Z

    if-eqz v1, :cond_f

    sget v1, Lcom/transsion/sniffer_load/R$string;->download_content_notice_pre:I

    goto :goto_1

    :cond_f
    sget v1, Lcom/transsion/sniffer_load/R$string;->download_content_notice:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$string;->copyright_notice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lphc;

    invoke-direct {v2}, Lphc;-><init>()V

    invoke-static {p0, p1, v0, v1, v2}, Lf27;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf27$c;)V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->x()V

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    sput-object v0, Le16;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->Z0()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->N:[I

    aget v1, v0, v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Ld39;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v1, v3

    aput v1, v0, v2

    :cond_11
    sget-object v5, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/sniffer_load/WebActivity;->N:[I

    iget v0, p0, Lcom/transsion/sniffer_load/WebActivity;->T:I

    iget v1, p0, Lcom/transsion/sniffer_load/WebActivity;->U:I

    filled-new-array {v0, v1}, [I

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->Z0()Z

    move-result v8

    sget-object v9, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getSniffResultShowType()I

    move-result v10

    const/4 v4, 0x1

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->C0(Landroid/content/Context;ZLjava/lang/String;[I[IZLjava/lang/String;I)V

    goto :goto_3

    :cond_12
    sget p0, Lcom/transsion/sniffer_load/R$string;->download_failed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_3

    :cond_13
    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSSYoutubeSite(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isYoutubeSite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_2

    :cond_14
    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    sput-object p1, Ldz5;->b:Ljava/lang/String;

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->x0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_15
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->B1()V

    :cond_16
    :goto_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->y1()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/sniffer_load/R$layout;->activity_web_with_hide_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->n0:Z

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    sput v1, Lcom/transsion/sniffer_load/WebActivity;->K0:I

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->R0()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->A0:Z

    const-string v2, "web_review_history_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/sniffer_load/WebActivity;->C0:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->z0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->A0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->U0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object p1

    const-string v2, "mUrl"

    invoke-virtual {p1, v2}, Laz8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->z0:Ljava/lang/String;

    :cond_1
    :goto_0
    sget p1, Lcom/transsion/sniffer_load/R$id;->edit_url:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    sget p1, Lcom/transsion/sniffer_load/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->Y:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/sniffer_load/R$id;->ll_bottom_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    sget v2, Lcom/transsion/sniffer_load/R$id;->top_bar:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->X:Lcom/google/android/material/appbar/AppBarLayout;

    sget v2, Lcom/transsion/sniffer_load/R$id;->bv_count:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/BadgeView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->f0:Lcom/transsion/widgets/BadgeView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_goleft:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_goright:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_main_page:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->k0:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_more:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->l0:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->ll_multi_web:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->r0:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_multi_web:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->a0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLongClickable(Z)V

    sget v2, Lcom/transsion/sniffer_load/R$id;->fl_bottom_content:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->G0:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/sniffer_load/R$id;->fl_half_content:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->F0:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->W:Landroid/widget/FrameLayout;

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_sniffer_download:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->b0:Landroid/widget/TextView;

    sget p1, Lcom/transsion/sniffer_load/R$id;->fl_sniffer_download:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    sget p1, Lcom/transsion/sniffer_load/R$id;->empty_anchor:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->d0:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->i0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->k0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->l0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->r0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->iv_privacy_browse:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->Z:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/sniffer_load/R$id;->iv_refresh:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->iv_download_manager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->iv_add_bookmark:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    const-class p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-static {p0}, Lnic;->q(Landroid/content/Context;)Lnic;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-static {p0}, Ld39;->c(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p1, v2}, Lnic;->E(I)V

    invoke-static {p0}, Ld39;->c(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lnic;->F(I)V

    const-class p1, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    iget-object p1, p1, Lnic;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ldhc;

    invoke-direct {v2, p0}, Ldhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v5, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->E0:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v8, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v0

    :goto_2
    const-string v7, "multi_web"

    move-object v3, p0

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->M(Landroid/app/Activity;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;Ljava/lang/String;Z)Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1}, Lnic;->l()Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    move-result-object p1

    new-instance v2, Ljhc;

    invoke-direct {v2, p0}, Ljhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {p1, p0, v2}, Lcom/transsion/sniffer_load/liveData/WebViewLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->activtiy_web_with_hide_toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->x0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "need_new_web"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_4
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    sget-object v3, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lnic;->C(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnic;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1}, Lnic;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->Q0(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    new-instance v1, Lkhc;

    invoke-direct {v1, p0}, Lkhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    const-string v2, "visha_WebActivity"

    invoke-virtual {p1, v2, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->v(Ljava/lang/String;Lmf7;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->D1()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WebActivity;->u1()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "need_youtube_guide"

    invoke-static {p1, v1, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->z1(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/sniffer_load/WebActivity;->q0:J

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->f0:Lcom/transsion/widgets/BadgeView;

    new-instance v1, Llhc;

    invoke-direct {v1, p0}, Llhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->Z0()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, -0x1

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/sniffer_load/R$dimen;->local_download_btn_animation_translate_x_left:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/sniffer_load/WebActivity;->u0:I

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->W0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->y1()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->N0()V

    sget-boolean p1, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d:Z

    if-eqz p1, :cond_6

    new-instance p1, Lcom/transsion/sniffer_load/WebActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/sniffer_load/WebActivity$a;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-static {v2, p1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->p1()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    instance-of p1, p2, Lcom/just/agentweb/NestedScrollAgentWebView;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/just/agentweb/NestedScrollAgentWebView;

    invoke-virtual {p2}, Lcom/just/agentweb/NestedScrollAgentWebView;->getLastMotionX()I

    move-result p1

    invoke-virtual {p2}, Lcom/just/agentweb/NestedScrollAgentWebView;->getLastMotionY()I

    move-result p2

    new-instance p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p3, v0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->d0:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p1}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    const-string p2, "dl_brower_rp_lc"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->d0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Leic;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->T0(Landroid/webkit/WebView$HitTestResult;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_3

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->d0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Leic;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/transsion/sniffer_load/WebActivity;->d0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, p0

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Leic;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->clearSniffData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnic;->x(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    const-string v1, "visha_WebActivity"

    invoke-static {v1}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    invoke-virtual {v1, p0}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->b(Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2005:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v3, v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v1

    iget-object v2, v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v1

    sget-object v2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/sniffer_load/WebActivity;->q0:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v1

    const-string v2, "dl_brower_sniff"

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->onDestroy()V

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->I0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->J0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    sget-object p0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    sput-object v0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p0, "ignore KEYCODE_CALL on WebActivity"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_WebActivity"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->s1()V

    if-nez p1, :cond_0

    const-string p0, "visha_WebActivity"

    const-string p1, "onNewIntent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "need_new_web"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->U0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    const-string v2, "dl_bm_cl"

    sput-object v2, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    const-string v2, "web_url_from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    :cond_1
    const-string v2, "page_index"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {v1, p1}, Lnic;->D(I)V

    if-eqz v0, :cond_2

    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->r1(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->q1(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1}, Lnic;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->Q0(I)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/WebActivity;->p0:J

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->E0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->E0:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->setData(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished, url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_WebActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebActivity;->X0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/sniffer_load/data/ReviewHistory;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->e0:Ljava/util/Map;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/sniffer_load/data/ReviewHistory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/WebActivity;->Y0(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "need_youtube_guide"

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    invoke-static {p1, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/transsion/sniffer_load/b;->i(Landroid/content/Context;)V

    const-string p1, "dl_brower_rp_ygtips_show"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {v3, p1, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebActivity;->D0:Z

    if-eqz p1, :cond_3

    iput-boolean p2, p0, Lcom/transsion/sniffer_load/WebActivity;->D0:Z

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->O:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->z(Lcom/transsion/sniffer_load/data/ReviewHistory;Lcom/transsion/playercommon/activities/BaseActivity;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    sget-object p2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide p1, p0, Lcom/transsion/sniffer_load/WebActivity;->p0:J

    iget-wide v0, p0, Lcom/transsion/sniffer_load/WebActivity;->o0:J

    sub-long/2addr p1, v0

    long-to-int p0, p1

    div-int/lit16 p0, p0, 0x3e8

    sget-object v2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->p:Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "dl_brower_rp_ldend"

    const-string v1, "address"

    const-string v3, "duration"

    const-string v5, "status"

    invoke-static/range {v0 .. v6}, Lhb0;->markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->H0:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-static {v0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p0}, Lz9;->q()V

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "close_forbid_dialog"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->H0:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_WebActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebActivity;->X0(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->n0:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/sniffer_load/R$anim;->web_in:I

    sget v2, Lcom/transsion/sniffer_load/R$anim;->pre_hold:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->n0:Z

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/sniffer_load/R$anim;->activity_webview_begin:I

    sget v2, Lcom/transsion/sniffer_load/R$anim;->activity_close_exit:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-static {v1}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v1}, Lz9;->r()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "music_guide"

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const-string v4, "https://360media.com.ng/"

    sget-object v5, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/transsion/sniffer_load/a;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/transsion/sniffer_load/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_download_guide"

    invoke-static {v1, v2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->y0:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    iget-object v1, v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->p:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->H0:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebActivity;->Y0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    if-eqz v1, :cond_5

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_youtube_guide"

    iget-boolean v3, p0, Lcom/transsion/sniffer_load/WebActivity;->g0:Z

    invoke-static {v1, v2, v3}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/transsion/sniffer_load/b;->i(Landroid/content/Context;)V

    const-string v1, "dl_brower_rp_ygtips_show"

    const-wide/16 v2, 0x246c

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->R:Landroid/widget/ImageView;

    new-instance v2, Lohc;

    invoke-direct {v2, p0}, Lohc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->Z:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "web_review_history_list"

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->B0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->D1()V

    const-string p0, "dl_brower_rp_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p0}, Lnic;->m()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnic;->A(II)V

    :cond_0
    return-void
.end method

.method public final p1()V
    .locals 2

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "is_from_multiweb_back"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lfhc;

    invoke-direct {v1, p0}, Lfhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "need_load_new_web"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lghc;

    invoke-direct {v1, p0}, Lghc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "download_service_connected"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lhhc;

    invoke-direct {v1, p0}, Lhhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final q1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->m0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz9;->o(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->V:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final r1(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    const-string v4, "multi_web"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->M(Landroid/app/Activity;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;Ljava/lang/String;Z)Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lnic;->e(Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    return-void
.end method

.method public s1()V
    .locals 0

    return-void
.end method

.method public t1()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebActivity;->s0:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    const-string v6, "video_url"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "dl_brower_rp_c_adl_show"

    const-string v2, "status"

    const-string v4, "main_url"

    invoke-static/range {v1 .. v7}, Lhb0;->markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public v1(Lcom/transsion/sniffer_load/okdownload/a;I)Z
    .locals 3

    invoke-static {p2}, Le16;->g(I)V

    sget-object p2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->inject(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Le6b;

    new-instance v2, Lqhc;

    invoke-direct {v2, p0, p2, p1}, Lqhc;-><init>(Lcom/transsion/sniffer_load/WebActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/sniffer_load/okdownload/a;)V

    invoke-direct {v1, p0, v2}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    invoke-virtual {v1, v0}, Le6b;->b(Z)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final w1(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 6

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "download_list_update"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {v0}, Lpy2;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->isClientForbidSniff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->s0:Z

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lp06;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->s0:Z

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebActivity;->s0:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->t1()V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-nez v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/transsion/sniffer_load/WebActivity;->L0(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->local_download_btn_bg_disable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->b0:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->local_download_btn_bg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->b0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne v0, v2, :cond_7

    sget v4, Lcom/transsion/sniffer_load/R$string;->video_num_a:I

    goto :goto_4

    :cond_7
    sget v4, Lcom/transsion/sniffer_load/R$string;->videos_num_a:I

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WebActivity;->v0:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->w0:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/WebActivity;->L0(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->J0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->w0:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    :cond_9
    :goto_5
    return-void

    :cond_a
    :goto_6
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public x()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->X:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    return-void
.end method

.method public final x1()V
    .locals 4

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    const-string v1, "Visha-Feedback-65295e1ed3ea44a1875ce932baf3284e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putLastWebToSp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebActivity;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBitmap width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_WebActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebActivity;->C1()V

    :cond_1
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity;->S:Ljava/lang/String;

    sget-object v2, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->h0:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lb23;->i(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    const-string v1, "last_web"

    invoke-static {p0, v1, v0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public y(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    if-nez v0, :cond_1

    invoke-static {p0}, Lnic;->q(Landroid/content/Context;)Lnic;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    :cond_1
    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_B:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p1}, Lnic;->p()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_2

    sget p1, Lcom/transsion/sniffer_load/R$string;->window_up_to_limit:I

    invoke-static {p0, p1}, Lcom/transsion/utils/ToastUtils;->u(Landroid/content/Context;I)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    const-string v4, "multi_web"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->M(Landroid/app/Activity;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;Ljava/lang/String;Z)Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p0, p3, p2, p1}, Lnic;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    sget p0, Lcom/transsion/sniffer_load/R$string;->link_open_b:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_F:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sput-object p3, Lcom/transsion/sniffer_load/WebActivity;->L0:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebActivity;->Q:Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    const-string v4, "multi_web"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->M(Landroid/app/Activity;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;Ljava/lang/String;Z)Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->P:Lnic;

    invoke-virtual {p0, p3, p2, p1}, Lnic;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    goto :goto_0

    :cond_4
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    invoke-virtual {p0, p3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    sget p0, Lcom/transsion/sniffer_load/R$string;->link_copy:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final y1()V
    .locals 2

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p0, v0}, Ld39;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0}, Ld39;->b(Landroid/content/Context;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->c0:Landroid/view/View;

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Lm23;->a(Landroid/view/View;II)V

    return-void
.end method

.method public z(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final z1(I)V
    .locals 3

    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p1

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity;->I0:Ljava/lang/Runnable;

    sget-boolean v1, Lym1;->b:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xbb8

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "is delay set count:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lym1;->b:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_WebActivity"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method
