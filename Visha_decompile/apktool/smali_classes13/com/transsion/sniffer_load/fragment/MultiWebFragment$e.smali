.class public Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->l0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$color;->fl_multi_web_bottom_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->m0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->n0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
