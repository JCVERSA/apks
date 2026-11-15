.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;
.super Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranActivityControllerExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
