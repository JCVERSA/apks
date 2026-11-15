.class public Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->q0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$b;->a:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$b;->a:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$b;->a:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method
