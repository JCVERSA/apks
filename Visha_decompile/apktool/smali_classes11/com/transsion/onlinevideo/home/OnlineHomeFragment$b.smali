.class public Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->initFragments(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    iput-object p2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->n0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/widgets/RtlViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->p0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v1, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->q0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->f0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->n0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/widgets/RtlViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->g0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "vd_ott_sl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->q0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V

    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->c:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;->b:Ljava/util/List;

    invoke-static {v0, p1, p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->t0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;ILjava/util/List;)V

    return-void
.end method
