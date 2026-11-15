.class public final Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->B(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p3, v0, p1, v1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->E(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;IIF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->C(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->D(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->F(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->G(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
