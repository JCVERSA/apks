.class Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->z0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

.field final synthetic val$saveTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iput-object p2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;->val$saveTv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;->val$saveTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;->this$0:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->e0:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method
