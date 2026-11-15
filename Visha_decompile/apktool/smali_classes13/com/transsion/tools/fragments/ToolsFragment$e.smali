.class public Lcom/transsion/tools/fragments/ToolsFragment$e;
.super Lgf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/fragments/ToolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/tools/fragments/ToolsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->ll_setting:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->F0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->ll_file_trans:I

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->B0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->fl_theme:I

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->G0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/tools/R$id;->fl_private:I

    if-ne v0, p1, :cond_3

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->E0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/transsion/tools/R$id;->ll_hide:I

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->D0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/transsion/tools/R$id;->ll_feedback:I

    if-ne v0, p1, :cond_5

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->L0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/transsion/tools/R$id;->ll_update:I

    if-ne v0, p1, :cond_6

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->x0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_6
    sget v0, Lcom/transsion/tools/R$id;->fl_download_manage:I

    if-ne v0, p1, :cond_7

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->A0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_7
    sget v0, Lcom/transsion/tools/R$id;->fl_video_to_mp3:I

    if-ne v0, p1, :cond_8

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->H0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_8
    sget v0, Lcom/transsion/tools/R$id;->ll_about_us:I

    if-ne v0, p1, :cond_9

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->z0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_9
    sget v0, Lcom/transsion/tools/R$id;->ll_go_rating:I

    if-ne v0, p1, :cond_a

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->C0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_0

    :cond_a
    sget v0, Lcom/transsion/tools/R$id;->ll_widget:I

    if-ne v0, p1, :cond_b

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$e;->e:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->I0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    :cond_b
    :goto_0
    return-void
.end method
