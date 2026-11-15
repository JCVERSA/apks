.class public final Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "Lzfb;",
        "initView",
        "",
        "getSupportGesture",
        "()Z",
        "getDragHandlerVisibility",
        "N",
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
.field public static final N:Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;->N:Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;->k0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;->i0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;->j0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final i0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void
.end method

.method public static final j0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void
.end method

.method public static final k0(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportGesture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$layout;->dialog_forbid_sniffer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget v1, Lcom/transsion/sniffer_load/R$id;->btn_certain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lor9;

    invoke-direct {v2, p0}, Lor9;-><init>(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/sniffer_load/R$id;->close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lpr9;

    invoke-direct {v1, p0}, Lpr9;-><init>(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "close_forbid_dialog"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lqr9;

    invoke-direct {v1, p0}, Lqr9;-><init>(Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
