.class public final Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;
.super Lcom/transsion/baseui/util/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->c(Landroid/content/Context;I)Lxy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->f:I

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lwn/q;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lwn/q;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->f:I

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->f:I

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->j0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
