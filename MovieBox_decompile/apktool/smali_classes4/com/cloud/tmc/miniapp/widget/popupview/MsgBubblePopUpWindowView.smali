.class public final Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;
.super Landroid/widget/LinearLayout;
.source "source.java"


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public OooO0OO:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO00o:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO00o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0O0:Lkotlin/Lazy;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0OO:Z

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 10
    sget p3, Lcom/cloud/tmc/miniapp/R$layout;->mini_msg_notice_popwindow_layout:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string p3, "miniMsgBubbleEnable"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0OO:Z

    if-eqz p1, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->getMIvMsgJump()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->getMIvMsgJump()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V

    .line 15
    :cond_1
    :goto_0
    new-instance p1, Lcom/cloud/tmc/miniapp/widget/popupview/o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/popupview/o;-><init>(Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0OO:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "page"

    const-string v2, "pages/notification/notification"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v1, "query"

    const-string v2, "entrance%3DBubble"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    const-string v1, "1000886706715795456"

    const-string v2, ""

    invoke-static {p1, v1, v2, v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    :cond_0
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0OO:Z

    if-eqz p0, :cond_1

    const-string p0, "0"

    goto :goto_0

    :cond_1
    const-string p0, "1"

    :goto_0
    const-string v1, "jump_confi"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 p0, 0x0

    .line 12
    const-string v1, "Bubble_click"

    invoke-interface {p1, p0, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final getMIvMsgJump()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMTvMsgToast()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO00o:Lkotlin/Lazy;

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


# virtual methods
.method public final OooO00o(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->getMTvMsgToast()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_toast_msg_bubble_tips:I

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 16
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    const-string v0, "MsgBubblePopUpWindowView"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
