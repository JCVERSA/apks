.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setVkUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Lux0;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->s1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->s1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->t1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->u1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->r1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v4}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->v1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v5}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->w1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/transsion/onlinevideo/mangotv/VkDialog;->O(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/onlinevideo/mangotv/VkDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "IntroDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show detail more dialog failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
