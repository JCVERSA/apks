.class public Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;I)V
    .locals 0

    iget-object p1, p1, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;->p:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->o:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;
    .locals 2

    new-instance p0, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0414

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public d(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->o:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->b(Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->c(Landroid/view/ViewGroup;I)Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter$CardViewHolder;

    move-result-object p0

    return-object p0
.end method
