.class public Lcom/transsion/tools/fragments/AboutUsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/fragments/AboutUsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/AboutUsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/AboutUsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->ll_privacy:I

    const-string v1, "title"

    const-string v2, "web_url"

    const-string v3, "com.transsion.sniffer_load.open_html_url"

    if-ne v0, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/AboutUsFragment;->Z(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lof8;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/tools/R$string;->privacy_policy:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/AboutUsFragment;->a0(Lcom/transsion/tools/fragments/AboutUsFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p0, "setup_about_privacy"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->ll_agreement:I

    if-ne v0, p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/AboutUsFragment;->b0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lof8;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/tools/R$string;->user_agreement:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/AboutUsFragment;->c0(Lcom/transsion/tools/fragments/AboutUsFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p0, "setup_about_user"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/tools/R$id;->ll_change_environment:I

    if-ne v0, p1, :cond_3

    iget-object p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$a;->b:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/AboutUsFragment;->m0()V

    :cond_3
    :goto_0
    return-void
.end method
