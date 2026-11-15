.class public Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag5$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->z0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;->c:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iput p2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;->b:I

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;->c:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iget-object v2, v1, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->e0:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;->c:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-virtual {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getPanelRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    :goto_0
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;->c:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getPanelRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
