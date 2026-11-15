.class Lcom/transsion/vishatransfer/activity/WifiActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/activity/WifiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

.field final synthetic val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$9;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    iput-object p2, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$9;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p0, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$9;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance p1, Lcom/transsion/vishatransfer/data/Conversation;

    new-instance v7, Lcom/transsion/vishatransfer/data/DeviceInfo;

    invoke-direct {v7}, Lcom/transsion/vishatransfer/data/DeviceInfo;-><init>()V

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;)V

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method
