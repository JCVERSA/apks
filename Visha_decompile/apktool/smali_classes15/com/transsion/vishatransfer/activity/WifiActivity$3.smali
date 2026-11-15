.class Lcom/transsion/vishatransfer/activity/WifiActivity$3;
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

    iput-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$3;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    iput-object p2, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$3;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$3;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v0, Lcom/transsion/vishatransfer/activity/WifiActivity$3$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/activity/WifiActivity$3$1;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity$3;)V

    invoke-interface {p1, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->createGroupAsyncWithRetry(Lu74;)V

    return-void
.end method
