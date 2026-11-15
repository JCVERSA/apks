.class Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iput-object p2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljy7;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected cover path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MediaOperateMenuDialogActivity"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-static {v1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->m0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->m0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->onPhotoSelected(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/arch/threads/TaskExecutor$Task;->onResult(Ljava/lang/Object;)V

    return-void
.end method
