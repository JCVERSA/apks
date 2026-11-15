.class public Lcom/transsion/tools/fragments/EmailSettingFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsv4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailSettingFragment;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic b:Lcom/transsion/tools/fragments/EmailSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailSettingFragment;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget v0, Lcom/transsion/tools/R$string;->privacy_send_verify_code_toast:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->P(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->f0(Ljava/lang/String;)Lcom/transsion/tools/fragments/EmailVerifyFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->T(Lcom/transsion/tools/fragments/EmailSettingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->R(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->Q(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$c;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->Q(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$string;->privacy_email_error:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
