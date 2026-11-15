.class public final Lcom/transsion/home/adapter/d$a;
.super Lcom/transsion/baseui/util/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/d;->c(Landroid/content/Context;I)Lxy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/adapter/d;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/d$a;->e:Lcom/transsion/home/adapter/d;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/adapter/d$a;->f:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/home/adapter/d$a;->e:Lcom/transsion/home/adapter/d;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/home/adapter/d;->h(Lcom/transsion/home/adapter/d;)Lqk/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lqk/h;->k:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/transsion/home/adapter/d$a;->f:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/d$a;->e:Lcom/transsion/home/adapter/d;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsion/home/adapter/d;->h(Lcom/transsion/home/adapter/d;)Lqk/h;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Lqk/h;->h:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/transsion/home/adapter/d$a;->f:I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
