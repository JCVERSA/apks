.class Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

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
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
