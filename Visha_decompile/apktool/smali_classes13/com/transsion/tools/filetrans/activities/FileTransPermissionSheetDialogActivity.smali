.class public final Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 22\u00020\u0001:\u00013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0003R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0018R\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R$\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\u0008\u0012\u0004\u0012\u00020#`$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u0018R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u0018R\u0016\u0010-\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010\u0018R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00064"
    }
    d2 = {
        "Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "Lzfb;",
        "y0",
        "",
        "isPermission",
        "D0",
        "(Z)V",
        "x0",
        "v0",
        "w0",
        "Q0",
        "z0",
        "L0",
        "P0",
        "initView",
        "isFixedHeight",
        "()Z",
        "showNotificationPermissionDialog",
        "onResume",
        "onDestroy",
        "N",
        "Z",
        "mConfirmClick",
        "O",
        "mInitResume",
        "P",
        "mNewPermission",
        "Landroid/view/View;",
        "Q",
        "Landroid/view/View;",
        "mView",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;",
        "Lkotlin/collections/ArrayList;",
        "R",
        "Ljava/util/ArrayList;",
        "mPermissionList",
        "S",
        "mNotificationSystemDialogCanUse",
        "T",
        "mLocationSystemDialogCanUse",
        "U",
        "mNearBySystemDialogCanUse",
        "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;",
        "V",
        "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;",
        "mPermissionAdapter",
        "W",
        "a",
        "tools_release"
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
.field public static final W:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;


# instance fields
.field public N:Z

.field public O:Z

.field public final P:Z

.field public Q:Landroid/view/View;

.field public final R:Ljava/util/ArrayList;

.field public S:Z

.field public T:Z

.field public U:Z

.field public final V:Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->W:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->O:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    new-instance v2, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;

    sget v4, Lcom/transsion/tools/R$drawable;->ic_file_trans_notification:I

    sget v5, Lcom/transsion/tools/R$string;->visha_notification_permission:I

    sget v6, Lcom/transsion/tools/R$string;->visha_notification_permission_of_file_trans_info:I

    invoke-direct {v2, v4, v5, v6}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;-><init>(III)V

    filled-new-array {v2}, [Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;

    move-result-object v2

    invoke-static {v2}, Ly71;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;

    sget v4, Lcom/transsion/tools/R$drawable;->ic_file_trans_location_device:I

    sget v5, Lcom/transsion/tools/R$string;->visha_location_device:I

    sget v6, Lcom/transsion/tools/R$string;->visha_location_device_info:I

    invoke-direct {v1, v4, v5, v6}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;-><init>(III)V

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;

    sget v4, Lcom/transsion/tools/R$drawable;->ic_file_trans_location:I

    sget v5, Lcom/transsion/tools/R$string;->visha_location_data:I

    sget v6, Lcom/transsion/tools/R$string;->visha_location_data_info:I

    invoke-direct {v1, v4, v5, v6}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;-><init>(III)V

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->R:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->S:Z

    iput-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->T:Z

    iput-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->U:Z

    new-instance v0, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->V:Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;

    return-void
.end method

.method public static final A0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public static final B0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lv34;->i()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.TETHER_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static final C0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->D0(Z)V

    return-void
.end method

.method public static final F0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    return-void
.end method

.method public static final G0(ZLcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->x0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->v0()V

    :goto_0
    return-void
.end method

.method public static final H0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static final I0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lt08;->k(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->i()V

    :goto_0
    return-void
.end method

.method public static final J0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    return-void
.end method

.method public static final K0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    return-void
.end method

.method public static final M0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public static final N0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final O0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->B0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->A0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->K0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->C0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->M0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k0(ZLcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->G0(ZLcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->O0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->u0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->I0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->H0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->J0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->N0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->t0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->F0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final t0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public static final u0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->N:Z

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->y0()V

    return-void
.end method


# virtual methods
.method public final D0(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v2, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-eqz v3, :cond_1

    const-string v3, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_location_devices_permission_tips:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_location_data_permission_tips:I

    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance v2, Lbt3;

    invoke-direct {v2, p0}, Lbt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->continue_with_toast:I

    new-instance v2, Lct3;

    invoke-direct {v2, p1, p0}, Lct3;-><init>(ZLcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v0, Ldt3;

    invoke-direct {v0, p0}, Ldt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final L0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_wifi_tips:I

    const-string v5, "Wi-Fi"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance v2, Lht3;

    invoke-direct {v2, p0}, Lht3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->continue_with_toast:I

    new-instance v2, Lvs3;

    invoke-direct {v2, p0}, Lvs3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lws3;

    invoke-direct {v1}, Lws3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final P0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final Q0()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->L0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;->isHotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->z0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P0()V

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    sget v0, Lcom/transsion/tools/R$layout;->activity_file_trans_permission_sheet_dialog:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->V:Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->R:Ljava/util/ArrayList;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.tools.filetrans.adapter.FileTransPermissionAdapter.Companion.PermissionItem>"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->Q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->showTitle(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget v2, Lcom/transsion/tools/R$string;->visha_request_permission:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget v1, Lcom/transsion/tools/R$id;->tv_file_trans_send_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/tools/R$string;->visha_file_trans_send_info_pre:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/tools/R$string;->visha_file_trans_send_info:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/tools/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v2, Lxs3;

    invoke-direct {v2, p0}, Lxs3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/tools/R$id;->tv_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v2, Lys3;

    invoke-direct {v2, p0}, Lys3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v0, :cond_4

    sget v1, Lcom/transsion/tools/R$id;->rv_file_trans_permission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->V:Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_4
    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->O:Z

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->N:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TEST] onResume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileTransPermissionSheetDialogActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->g()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v2, v6, v8

    const/4 v4, 0x1

    if-gez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->f()Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x3e8dd581

    if-eq v6, v7, :cond_8

    const v7, 0x237a88eb

    if-eq v6, v7, :cond_5

    const v7, 0x714f9fb5

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "location"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->T:Z

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lt08;->g(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    xor-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->S:Z

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1

    :cond_8
    const-string v6, "nearby"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->U:Z

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-eqz v0, :cond_b

    invoke-static {p0}, Lt08;->h(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1

    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->S:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/a$a;->l()V

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_4

    :cond_c
    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->y0()V

    goto :goto_4

    :cond_d
    invoke-static {p0}, Lt08;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->W:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;

    invoke-virtual {v0, p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->Q0()V

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->w0()V

    :cond_10
    :goto_4
    return-void
.end method

.method public showNotificationPermissionDialog()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_notification_permission_tips:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance v2, Lus3;

    invoke-direct {v2, p0}, Lus3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->continue_with_toast:I

    new-instance v2, Lzs3;

    invoke-direct {v2, p0}, Lzs3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lat3;

    invoke-direct {v1, p0}, Lat3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    sget-object v1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NOTIFICATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final v0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final w0()V
    .locals 5

    invoke-static {p0}, Lt08;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->U:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    sget-object v2, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NEARBY:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->T:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    sget-object v3, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->LOCATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    if-lt v0, v3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    aput-object v4, v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->E0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->W:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;

    invoke-virtual {v0, p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->D0(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->Q0()V

    :goto_1
    return-void
.end method

.method public final x0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lt08;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NEARBY:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->i()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    sget-object v1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->LOCATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final y0()V
    .locals 2

    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->w0()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->P:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->S:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    sget-object v1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NOTIFICATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->showNotificationPermissionDialog()V

    :goto_0
    return-void
.end method

.method public final z0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_need_stop_hot_spot:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance v2, Let3;

    invoke-direct {v2, p0}, Let3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/tools/R$string;->go_setting:I

    new-instance v2, Lft3;

    invoke-direct {v2, p0}, Lft3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lgt3;

    invoke-direct {v1}, Lgt3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method
