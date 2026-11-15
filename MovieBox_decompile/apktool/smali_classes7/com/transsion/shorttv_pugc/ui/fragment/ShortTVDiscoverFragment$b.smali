.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lfs/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 7

    .line 1
    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-virtual {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p4, 0x0

    .line 21
    :goto_0
    if-gt p4, p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 25
    .line 26
    invoke-virtual {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    if-eqz p4, :cond_2

    .line 37
    .line 38
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    check-cast p4, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 43
    .line 44
    :goto_1
    move-object v2, p4

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 p4, 0x0

    .line 47
    goto :goto_1

    .line 48
    :goto_2
    if-eqz v2, :cond_3

    .line 49
    .line 50
    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 51
    .line 52
    invoke-static {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->u0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;)Lxs/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 57
    .line 58
    invoke-virtual {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->getPageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 63
    .line 64
    invoke-virtual {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->E0()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    move v3, p1

    .line 69
    move-wide v4, p2

    .line 70
    invoke-virtual/range {v0 .. v6}, Lxs/b;->a(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;IJLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method
