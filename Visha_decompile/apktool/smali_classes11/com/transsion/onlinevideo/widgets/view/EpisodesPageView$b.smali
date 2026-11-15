.class public Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$b;->a:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$b;->a:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method
