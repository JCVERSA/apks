.class Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field final synthetic this$0:Lcom/transsion/widgets/CustomTabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v0, p2, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {p2, p3, p0}, Lcom/transsion/widgets/CustomTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_0
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;->autoRefresh:Z

    return-void
.end method
