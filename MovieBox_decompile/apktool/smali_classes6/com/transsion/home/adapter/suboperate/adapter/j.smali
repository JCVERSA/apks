.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/BannerData;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/j;->a:Lcom/transsion/home/bean/BannerData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/j;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/j;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/j;->a:Lcom/transsion/home/bean/BannerData;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/j;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/j;->c:I

    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;ILandroid/view/View;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
