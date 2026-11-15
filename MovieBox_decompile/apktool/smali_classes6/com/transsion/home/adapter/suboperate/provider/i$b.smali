.class public final Lcom/transsion/home/adapter/suboperate/provider/i$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/i;->S(Ljava/util/List;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/i;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i$b;->a:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i$b;->a:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->E(Lcom/transsion/home/adapter/suboperate/provider/i;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$b;->a:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->I(Lcom/transsion/home/adapter/suboperate/provider/i;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
