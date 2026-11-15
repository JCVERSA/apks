.class public final Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# static fields
.field public static final synthetic OooOOOo:I


# instance fields
.field public final OooO:Ljava/lang/String;

.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Ljava/lang/String;

.field public final OooO0oo:Ljava/lang/String;

.field public OooOO0:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

.field public OooOO0O:Z

.field public OooOO0o:J

.field public OooOOO:Ljava/lang/String;

.field public OooOOO0:I

.field public final OooOOOO:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o:Lkotlin/Lazy;

    .line 5
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0O0:Lkotlin/Lazy;

    .line 6
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooOO0O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0OO:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0Oo:Lkotlin/Lazy;

    .line 8
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0o0:Lkotlin/Lazy;

    .line 9
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO00o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0o:Lkotlin/Lazy;

    .line 10
    const-string p2, "MiniAddHomeTipDialog"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 11
    const-string p2, "key_latest_show_add_home_dialog_time"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oo:Ljava/lang/String;

    .line 12
    const-string p2, "key_show_add_home_dialog_num"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 14
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_dialog_addhome_tip_layout:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getTvAddHomeNowBtn()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/popupview/k;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/k;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/l;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/l;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getTvAddHomeLaterBtn()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/popupview/m;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/m;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getIvAddHomeTipClose()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/popupview/n;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/n;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_2
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;

    invoke-direct {p2, p1, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOOO:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getLauncherShortCutActivity()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get(StartActivityProxy::\u2026.launcherShortCutActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    const/16 v7, 0x60

    const/4 v8, 0x0

    .line 6
    const-string v3, "12"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V

    .line 7
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    const-string v2, "location"

    const-string v3, "12"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    const-string v2, "quit_pop_click"

    invoke-interface {v0, p1, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final OooO0Oo(Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final getIvAddHomeTipClose()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getIvDialogMiniAppLogo()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvAddHomeLaterBtn()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0o0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvAddHomeNowBtn()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0Oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvDialogContentInfo()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvDialogMiniAppName()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0OO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final setLogoResource(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getIvDialogMiniAppLogo()Landroid/widget/ImageView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-class v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private final setTitleInfo(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-eqz p1, :cond_6

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getZh()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getEn()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getFr()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance v1, Ljava/util/Locale;

    .line 90
    .line 91
    const-string v2, "ar"

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getAr()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance v1, Ljava/util/Locale;

    .line 120
    .line 121
    const-string v2, "ru"

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getRu()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    new-instance v1, Ljava/util/Locale;

    .line 150
    .line 151
    const-string v2, "in"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    if-eqz p1, :cond_6

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getId()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    if-eqz p1, :cond_6

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getEn()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_0

    .line 192
    :cond_6
    const/4 p1, 0x0

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_add_home_tips_default:I

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, "getContext().getString(R\u2026ni_add_home_tips_default)"

    .line 204
    .line 205
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefaultAndCheckEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v2, "setAddHomeBtnInfo: "

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getTvDialogContentInfo()Landroid/widget/TextView;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-nez v0, :cond_7

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    :goto_2
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 29
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "miniappAddHomeToastData"

    invoke-interface {v0, p1, v1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "miniappAddHomeToastData"

    const-string v1, "_"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    if-eqz p3, :cond_0

    .line 24
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 25
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, p2, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    .line 27
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 28
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    invoke-interface {v2, p1, v0, p2, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string v3, "showAddHomeDialog"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    :cond_2
    if-eqz p2, :cond_3

    .line 55
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 56
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getConfigs()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->setTitleInfo(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)V

    :cond_3
    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO:Ljava/lang/String;

    .line 58
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->setLogoResource(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getTvDialogMiniAppName()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_5
    :goto_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 61
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v9, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    .line 63
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_6
    :goto_2
    move-wide v4, p3

    goto :goto_3

    :cond_7
    const-wide/32 p3, 0xafc8

    goto :goto_2

    .line 64
    :goto_3
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOOO:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, p1

    .line 65
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V

    .line 66
    invoke-virtual {v1, v0, v9}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->addPopWindow(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V

    :cond_8
    return-void
.end method

.method public final OooO00o(Z)V
    .locals 3

    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string v0, "hideDialog: not visible"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 15
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    if-eqz v2, :cond_4

    .line 17
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 18
    invoke-virtual {v2, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goBack()V

    .line 20
    :cond_4
    :goto_0
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$anim;->mini_view_toast_exit:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_8

    .line 31
    :try_start_0
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getStatus()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 32
    :cond_0
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 33
    const-string v3, "enableAddHomeBackDialogTip"

    .line 34
    invoke-virtual {v2, v3, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string p2, "checkAddHomeDialogTipIsNeedShow: backDialogEnable is false"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 36
    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string p2, "checkAddHomeDialogTipIsNeedShow addhomeStatus is true"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 38
    :cond_2
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 39
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 40
    const-string v3, "miniappAddHomeToastData"

    .line 41
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-interface {v2, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 43
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getPerXDay()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    const v5, 0x15180

    mul-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    cmp-long v2, v7, v4

    if-lez v2, :cond_4

    .line 46
    invoke-virtual {p0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 47
    :cond_4
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDisplayFrequency()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    if-lt v6, p1, :cond_7

    .line 48
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDisplayFrequency()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAddHomeDialogTipIsNeedShow showNum is "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    :goto_3
    return v1

    .line 49
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string p2, "checkAddHomeDialogTipIsNeedShow: bean is null or status is false"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 50
    :goto_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string p3, "checkAddHomeTopTipIsNeedShow error"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final OooO0O0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "miniappAddHomeToastData"

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBackFromType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowAddHomeDialogDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowAddHomeDialogStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0O:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBackFromType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMMiniAppAutoPopover(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAddHomeDialogDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0o:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAddHomeDialogStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0O:Z

    .line 2
    .line 3
    return-void
.end method
