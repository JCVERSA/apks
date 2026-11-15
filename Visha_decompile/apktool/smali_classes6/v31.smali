.class public final Lv31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv31$a;
    }
.end annotation


# static fields
.field public static final c:Lv31$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv31$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv31$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lv31;->c:Lv31$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv31;->a:Landroid/content/Context;

    iput-object p2, p0, Lv31;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public static synthetic a(Lv31;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->j(Lv31;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lv31;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->l(Lv31;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lv31;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lv31;->o(Ljava/lang/String;Lv31;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lv31;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->p(Lv31;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lv31;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->m(Lv31;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lv31;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->k(Lv31;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Lv31;)V
    .locals 0

    invoke-static {p0, p1}, Lv31;->i(Ljava/lang/String;Lv31;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Lv31;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p1, Lv31;->b:Landroid/webkit/WebView;

    new-instance v1, Lu31;

    invoke-direct {v1, p1, p0}, Lu31;-><init>(Lv31;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p1, Lv31;->a:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public static final j(Lv31;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lv31;->b:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final k(Lv31;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lv31;->a:Landroid/content/Context;

    invoke-static {v0}, Le07;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/transsion/widgetslib/dialog/OSSnackbar;->b:Lcom/transsion/widgetslib/dialog/OSSnackbar$a;

    iget-object v0, p0, Lv31;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/netdisk/R$string;->no_network_connect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p1

    iget-object v0, p0, Lv31;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lr31;

    invoke-direct {v1, p0}, Lr31;-><init>(Lv31;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->f()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lv31;->b:Landroid/webkit/WebView;

    new-instance v1, Ls31;

    invoke-direct {v1, p0, p1}, Ls31;-><init>(Lv31;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static final l(Lv31;Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lv31;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final m(Lv31;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lv31;->b:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final n(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static final o(Ljava/lang/String;Lv31;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    iget-object p2, p1, Lv31;->b:Landroid/webkit/WebView;

    new-instance p3, Lt31;

    invoke-direct {p3, p1, p0}, Lt31;-><init>(Lv31;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static final p(Lv31;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lv31;->b:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public final close(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ln31;

    invoke-direct {v0, p1, p0}, Ln31;-><init>(Ljava/lang/String;Lv31;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cloudWebViewAthena(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "event"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flag"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CloudSpaceJsInterface"

    const-string v0, "cloudWebViewAthena"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {p0, p4, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p3, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final commit(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lo31;

    invoke-direct {v0, p0, p1}, Lo31;-><init>(Lv31;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final copyTextToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv31;->a:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p0, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/ClipboardManager;

    const-string p2, "label"

    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public final getBaseInfo()Ljava/lang/String;
    .locals 20
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p0

    new-instance v19, Lcom/transsion/cloud/data/SpaceBean;

    move-object/from16 v1, v19

    sget-object v2, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v2}, Lcom/transsion/utils/deviceinfo/a$a;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lv96;->a:Lv96;

    iget-object v5, v0, Lv31;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lv96;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lv96;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lv31;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lv96;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lv96;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a;->f()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lga2;->a()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v2, "getModelName(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lzdc;->d()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/blankj/utilcode/util/b;->d()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v2, "getAppVersionName(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpp3;->b()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const-string v2, "getOsVersion(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-string v2, "getLanguage(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->m()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v17

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v2, "vishaplayer"

    const-string v4, ""

    invoke-direct/range {v1 .. v18}, Lcom/transsion/cloud/data/SpaceBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v19 .. v19}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toJson(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final handlePaySuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lv31;->a:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->a0:Z

    :cond_0
    const-string p0, "CloudSpaceJsInterface"

    const-string v0, "handlePaySuccess"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final hideLoading()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final loginCloud(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lv31;->a:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->g(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv31;->b:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Lcom/transsion/palmsdk/b;->E(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setActionBarTitle(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "CloudSpaceJsInterface"

    const-string p1, "setActionBarTitle"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setIsFilled(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "isFill"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CloudSpaceJsInterface"

    const-string p1, "setIsFilled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setUnsubscribed()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "CloudSpaceJsInterface"

    const-string v0, "setUnsubscribed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setWebViewProgress()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "CloudSpaceJsInterface"

    const-string v0, "setWebViewProgress"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativeText"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lv31;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    new-instance p2, Lp31;

    invoke-direct {p2, p5, p0}, Lp31;-><init>(Ljava/lang/String;Lv31;)V

    invoke-virtual {p1, p3, p2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    new-instance p1, Lq31;

    invoke-direct {p1}, Lq31;-><init>()V

    invoke-virtual {p0, p4, p1}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_0
    if-eqz p0, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final showLoading(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/transsion/utils/ToastUtils;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSpaceData(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extendedData"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x4a2

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final upgradeSuccessWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "spaceData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "time"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CloudSpaceJsInterface"

    const-string p1, "upgradeSuccessWarn"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
