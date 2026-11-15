.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->y0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->E(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->y0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->onSelectInViewPage()V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->E0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->notifyAdapter()V

    :cond_2
    return-void
.end method
