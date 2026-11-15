.class Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/utils/UpdateDialogUtils$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/tools/utils/UpdateDialogUtils$1;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/utils/UpdateDialogUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;->this$1:Lcom/transsion/tools/utils/UpdateDialogUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;->this$1:Lcom/transsion/tools/utils/UpdateDialogUtils$1;

    iget-object v0, v0, Lcom/transsion/tools/utils/UpdateDialogUtils$1;->b:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "popup_version_n_cl"

    invoke-static {v0, v1, v2}, Lp06;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;->this$1:Lcom/transsion/tools/utils/UpdateDialogUtils$1;

    iget-object v0, v0, Lcom/transsion/tools/utils/UpdateDialogUtils$1;->c:Lcom/transsion/tools/utils/UpdateDialogUtils;

    invoke-static {v0}, Lcom/transsion/tools/utils/UpdateDialogUtils;->a(Lcom/transsion/tools/utils/UpdateDialogUtils;)Lcom/transsion/tools/utils/UpdateDialogUtils$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;->this$1:Lcom/transsion/tools/utils/UpdateDialogUtils$1;

    iget-object p0, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1;->c:Lcom/transsion/tools/utils/UpdateDialogUtils;

    invoke-static {p0}, Lcom/transsion/tools/utils/UpdateDialogUtils;->a(Lcom/transsion/tools/utils/UpdateDialogUtils;)Lcom/transsion/tools/utils/UpdateDialogUtils$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/tools/utils/UpdateDialogUtils$b;->finish()V

    :cond_1
    return-void
.end method
