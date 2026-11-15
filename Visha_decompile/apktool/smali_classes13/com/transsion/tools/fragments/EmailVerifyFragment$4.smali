.class Lcom/transsion/tools/fragments/EmailVerifyFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/fragments/EmailVerifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->P(Lcom/transsion/tools/fragments/EmailVerifyFragment;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->W(Lcom/transsion/tools/fragments/EmailVerifyFragment;I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->U(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/tools/R$string;->privacy_verify_code_resend_timer:I

    iget-object v4, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v4}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->P(Lcom/transsion/tools/fragments/EmailVerifyFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->P(Lcom/transsion/tools/fragments/EmailVerifyFragment;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->V(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->U(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->privacy_verify_code_resend:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->U(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
