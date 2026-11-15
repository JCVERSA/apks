.class public Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioSheetDialogActivity;->y0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/AudioSheetDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;->a:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;->a:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v1, v2}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;->a:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-static {v1, v0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->u0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/playercommon/data/FileOperateItem;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;->a:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method
