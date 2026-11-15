.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 1

    .line 1
    const-string p1, "ToastDialog"

    .line 2
    .line 3
    const-string v0, "onDismiss"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->access$isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->access$cancelAnimator(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
