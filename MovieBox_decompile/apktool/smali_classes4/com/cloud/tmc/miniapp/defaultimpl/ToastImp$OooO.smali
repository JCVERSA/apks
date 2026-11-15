.class public final Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/CommonDialogOperate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->showCommonDialogWithOperate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)Lcom/cloud/tmc/integration/callback/CommonDialogOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOo00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    :cond_0
    return-void
.end method
