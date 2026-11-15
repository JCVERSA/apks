.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/BannerData;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->a:Lcom/transsion/home/bean/BannerData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->a:Lcom/transsion/home/bean/BannerData;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
