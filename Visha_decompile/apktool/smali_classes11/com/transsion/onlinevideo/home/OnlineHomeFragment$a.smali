.class public Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/home/OnlineHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->u0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTopBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mTopBarShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->l0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getShowTopFunction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_onlineHomeFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v1, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->v0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->d0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->l0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z

    move-result v0

    if-eq v0, p1, :cond_10

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->o0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->r0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->s0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->m0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->m0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_online_visha_logo:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_online_visha_logo_night:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->h0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->h0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_4

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_online_video_search:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_online_video_search_night:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->b0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->b0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_6

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_bar_collect_enter:I

    goto :goto_2

    :cond_6
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_bar_collect_enter_dark:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->e0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->e0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_8

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_history_record:I

    goto :goto_3

    :cond_8
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_history_record_night:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->k0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->k0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    if-eqz p1, :cond_a

    invoke-static {v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->c0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)I

    move-result v1

    goto :goto_4

    :cond_a
    invoke-static {v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->access$000(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->i0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->i0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    if-eqz p1, :cond_c

    invoke-static {v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->c0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)I

    move-result v1

    goto :goto_5

    :cond_c
    invoke-static {v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->access$100(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->j0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/widgets/CustomTabLayout;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->j0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/widgets/CustomTabLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_e

    sget v2, Lcom/transsion/onlinevideo/R$color;->os_text_secondary_color:I

    :goto_6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_7

    :cond_e
    sget v2, Lcom/transsion/onlinevideo/R$color;->os_text_secondary_color_dark:I

    goto :goto_6

    :goto_7
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_f

    sget p1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    :goto_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_9

    :cond_f
    sget p1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color_dark:I

    goto :goto_8

    :goto_9
    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgets/CustomTabLayout;->setTabTextColors(II)V

    :cond_10
    return-void
.end method
