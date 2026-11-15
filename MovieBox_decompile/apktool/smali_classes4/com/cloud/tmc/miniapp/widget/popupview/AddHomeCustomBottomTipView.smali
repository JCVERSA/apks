.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;
.super Landroid/widget/LinearLayout;
.source "source.java"


# static fields
.field public static final synthetic OooOOO0:I


# instance fields
.field public OooO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Ljava/lang/String;

.field public final OooO0o0:Ljava/lang/String;

.field public final OooO0oO:Ljava/lang/String;

.field public final OooO0oo:Lkotlin/Lazy;

.field public OooOO0:Z

.field public OooOO0O:J

.field public final OooOO0o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;


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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o:Lkotlin/Lazy;

    .line 5
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0O0:Lkotlin/Lazy;

    .line 6
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0OO:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0OO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0Oo:Lkotlin/Lazy;

    .line 8
    const-string p2, "key_latest_show_bottom_toast_time"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o0:Ljava/lang/String;

    .line 9
    const-string p2, "key_show_bottom_toast_num"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o:Ljava/lang/String;

    .line 10
    const-string p2, "AddHomeCustomBottomTipView"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 11
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO00o;

    invoke-direct {p2, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO00o;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oo:Lkotlin/Lazy;

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 13
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_layout_custom_addhome_bottom_tip_view:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 16
    :cond_0
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/g;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/g;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getTvAddHome()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/popupview/h;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/h;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getIvMiniTipsX()Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/popupview/i;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/i;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;

    invoke-direct {p2, p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)Lcom/cloud/tmc/integration/ActivityHelper;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    const-string v2, "location"

    const-string v3, "14"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    const-string v2, "bottom_banner_click"

    invoke-interface {p2, p0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    instance-of p0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz p0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addScreen(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string p1, "AddHomeCustomBottomTipView click"

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    return-void
.end method

.method private final getActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/ActivityHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getIvMiniLogo()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivMiniLogo>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getIvMiniTipsX()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0Oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivMiniTipsX>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getTvAddHome()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0OO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-tvAddHome>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getTvContentInfo()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-tvContentInfo>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o:Ljava/lang/String;

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

.method public final OooO00o(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;
    .locals 3

    .line 9
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getZh()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 12
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getEn()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 14
    :cond_1
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getFr()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ar"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getAr()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_3
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getRu()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_4
    new-instance v1, Ljava/util/Locale;

    const-string v2, "in"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getId()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getEn()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getButtonText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_addhome_dialog_btn_add:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026i_addhome_dialog_btn_add)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefaultAndCheckEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAddHomeBtnInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getTvAddHome()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p0
.end method

.method public final OooO00o()V
    .locals 4

    .line 27
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 28
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 29
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "bottom_banner_ex"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cloud/tmc/miniapp/R$anim;->mini_view_toast_enter:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string v2, "toAddCustomBottomVisible error"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miniappAddHomeToastData"

    const-string v1, "_"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    if-eqz p3, :cond_0

    .line 54
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o:Ljava/lang/String;

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

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    .line 56
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 57
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o:Ljava/lang/String;

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

    const-string v0, "miniappId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
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

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)Z

    move-result v1

    .line 60
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showAddHomeBottomTips enableShowStatus->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    if-eqz p2, :cond_9

    .line 61
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 62
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getConfigs()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0O0(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const-class v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 65
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getIvMiniLogo()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v6

    invoke-interface {v3, v4, v1, v5, v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 67
    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getConfigs()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 69
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getButtonBackgroundColor()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_5

    move-object v1, v3

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getButtonTextColor()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v4

    .line 70
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 71
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getTvAddHome()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_7

    move-object v2, v4

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 72
    :goto_6
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_8
    :goto_7
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 74
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getTvAddHome()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_9
    :goto_8
    sget-object v1, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 77
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v9, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_a

    if-eqz p2, :cond_b

    .line 79
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_a
    :goto_9
    move-wide v4, p3

    goto :goto_a

    :cond_b
    const-wide/16 p3, 0x4e20

    goto :goto_9

    .line 80
    :goto_a
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, p1

    .line 81
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V

    .line 82
    invoke-virtual {v1, v0, v9}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->addPopWindow(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V

    :cond_c
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

    .line 33
    :try_start_0
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getStatus()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 34
    :cond_0
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 35
    const-string v3, "enableAddHomeBottomTip"

    .line 36
    invoke-virtual {v2, v3, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string p2, "checkAddHomeBottomTipIsNeedShow: bottomTipsEnable is false"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 38
    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string p2, "checkAddHomeBottomTipIsNeedShow addhomeStatus is true"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 40
    :cond_2
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 41
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 42
    const-string v3, "miniappAddHomeToastData"

    .line 43
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o0:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-interface {v2, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 45
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

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    cmp-long v2, v7, v4

    if-lez v2, :cond_4

    .line 48
    invoke-virtual {p0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 49
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

    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

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

    const-string v2, "checkAddHomeBottomTipIsNeedShow showNum is "

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

    .line 51
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string p2, "checkAddHomeBottomTipIsNeedShow: bean is null or status is false"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 52
    :goto_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string p3, "checkAddHomeTopTipIsNeedShow error"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final OooO0O0(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;
    .locals 3

    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getZh()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 6
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getEn()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getFr()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ar"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getAr()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_3
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getRu()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_4
    new-instance v1, Ljava/util/Locale;

    const-string v2, "in"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getId()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->getEn()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_add_home_tips_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ni_add_home_tips_default)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefaultAndCheckEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAddHomeContentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getTvContentInfo()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p0
.end method

.method public final OooO0O0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0o0:Ljava/lang/String;

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

.method public final getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowAddHomeBottomTipsDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0O:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowAddHomeBottomTipsStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setMMiniAppAutoPopover(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAddHomeBottomTipsDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0O:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAddHomeBottomTipsStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0:Z

    .line 2
    .line 3
    return-void
.end method
