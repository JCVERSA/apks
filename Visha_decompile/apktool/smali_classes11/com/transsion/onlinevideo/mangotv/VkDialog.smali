.class public Lcom/transsion/onlinevideo/mangotv/VkDialog;
.super Lcom/transsion/onlinevideo/mangotv/IntroDialog;
.source "SourceFile"


# instance fields
.field public E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;-><init>()V

    return-void
.end method

.method public static O(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/onlinevideo/mangotv/VkDialog;
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/mangotv/VkDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    iput-object p1, v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->F:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->G:Ljava/lang/String;

    iput-object p3, v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->H:Ljava/lang/String;

    iput-object p4, v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->I:Ljava/lang/String;

    iput-object p5, v0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->J:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "arg_vk_feed_bean"

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "arg_vk_id"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_vk_source_image"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_vk_cover_image"

    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_vk_source_name"

    invoke-virtual {v1, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_vk_video_name"

    invoke-virtual {v1, p0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final P()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    if-nez v1, :cond_1

    const-string v1, "arg_vk_feed_bean"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-static {v1, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->F:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "arg_vk_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->F:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->G:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "arg_vk_source_image"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->G:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->H:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "arg_vk_cover_image"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->H:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->I:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "arg_vk_source_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->I:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->J:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "arg_vk_video_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->J:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->layout_vk_introduce:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/VkDialog;->P()V

    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/VkDialog;->P()V

    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->J:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_short_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getViews()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getLikes()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCreated()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Ldt7;->g(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getShortDescribe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/VkDialog;->E:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getShortDescribe()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
