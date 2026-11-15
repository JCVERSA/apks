.class public Lcom/transsion/tools/utils/UpdateDialogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/utils/UpdateDialogUtils$b;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/tools/utils/UpdateDialogUtils$b;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/utils/UpdateDialogUtils$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils;->a:Lcom/transsion/tools/utils/UpdateDialogUtils$b;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/tools/utils/UpdateDialogUtils;)Lcom/transsion/tools/utils/UpdateDialogUtils$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/utils/UpdateDialogUtils;->a:Lcom/transsion/tools/utils/UpdateDialogUtils$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showUpdateDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialogUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$layout;->dialog_version_update:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$id;->iv_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/tools/R$drawable;->ic_logo_mini_pre:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/tools/R$drawable;->ic_logo_mini:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    sget v1, Lcom/transsion/tools/R$id;->tv_new_version:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/tools/R$string;->visha_update_version:I

    const-string v5, ""

    if-nez p2, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/tools/R$id;->tv_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v4, Lpp3;->c:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/transsion/tools/R$string;->visha_Player_pre:I

    goto :goto_2

    :cond_3
    sget v4, Lcom/transsion/tools/R$string;->visha_Player:I

    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/tools/R$id;->tv_version_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/tools/R$string;->version_size:I

    if-nez p2, :cond_4

    move-object v6, v5

    goto :goto_3

    :cond_4
    iget-object v6, p2, Lcom/transsion/playercommon/data/CloudVersionControl;->fileSize:Ljava/lang/String;

    :goto_3
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/tools/R$id;->tv_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p2, :cond_5

    move-object v2, v5

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionDesAll()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/tools/R$string;->visha_new_version_found:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->visha_update:I

    new-instance v2, Lcom/transsion/tools/utils/UpdateDialogUtils$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/transsion/tools/utils/UpdateDialogUtils$a;-><init>(Lcom/transsion/tools/utils/UpdateDialogUtils;Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/tools/R$string;->gp_later:I

    new-instance v1, Lcom/transsion/tools/utils/UpdateDialogUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/transsion/tools/utils/UpdateDialogUtils$1;-><init>(Lcom/transsion/tools/utils/UpdateDialogUtils;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionName()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "popup_version_show"

    invoke-static {v5, p0, p1}, Lp06;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
