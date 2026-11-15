.class public final Lcom/cloud/tmc/miniapp/utils/toast/style/NoHasBgStateToastStyle;
.super Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const v1, 0x1020002

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    const/16 v2, 0x78

    .line 20
    .line 21
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    const/16 v2, 0x28

    .line 38
    .line 39
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x11

    .line 51
    .line 52
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createIconView(Landroid/content/Context;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createTextView(Landroid/content/Context;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
