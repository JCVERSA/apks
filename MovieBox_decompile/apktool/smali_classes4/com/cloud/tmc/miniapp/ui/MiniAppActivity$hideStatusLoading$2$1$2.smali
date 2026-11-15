.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setMsgAppName(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getShowMsgBubbleController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
