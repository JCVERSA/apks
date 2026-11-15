.class public Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$a;->d:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$a;->d:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {v0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->f(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Lcom/transsion/widgets/CustomTabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$a;->d:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->f(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Lcom/transsion/widgets/CustomTabLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout$Tab;->select()V

    :cond_0
    return-void
.end method
