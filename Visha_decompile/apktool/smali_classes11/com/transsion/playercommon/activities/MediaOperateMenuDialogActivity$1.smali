.class Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$1;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$1;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iget-object v1, v0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->W:Landroid/os/Handler;

    iget-object v0, v0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->V:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$1;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->p0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    return-void
.end method
