.class public Lcom/transsion/tools/fragments/EmailVerifyFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsv4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailVerifyFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/EmailVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->S(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, -0x1004

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->S(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->privacy_send_verify_code_error_1:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x1005

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->S(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->privacy_send_verify_code_error_2:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x1006

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->S(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->privacy_send_verify_code_error_3:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->S(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->Z(I)Lcom/transsion/tools/fragments/PasswordSettingFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;->a:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->a0(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
