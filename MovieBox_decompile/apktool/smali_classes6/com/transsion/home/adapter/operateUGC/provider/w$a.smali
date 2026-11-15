.class public final Lcom/transsion/home/adapter/operateUGC/provider/w$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/operateUGC/provider/w;->F(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/view/d;

.field final synthetic b:Lcom/transsion/home/adapter/operateUGC/provider/w;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/home/view/d;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->a:Lcom/transsion/home/view/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->b:Lcom/transsion/home/adapter/operateUGC/provider/w;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_5

    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->a:Lcom/transsion/home/view/d;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_5

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->b:Lcom/transsion/home/adapter/operateUGC/provider/w;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->A(Lcom/transsion/home/adapter/operateUGC/provider/w;)Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/e;->C1(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->b:Lcom/transsion/home/adapter/operateUGC/provider/w;

    .line 44
    .line 45
    invoke-static {p2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/w;->C(Lcom/transsion/home/adapter/operateUGC/provider/w;I)V

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->b:Lcom/transsion/home/adapter/operateUGC/provider/w;

    .line 51
    .line 52
    invoke-static {p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->A(Lcom/transsion/home/adapter/operateUGC/provider/w;)Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 p2, -0x1

    .line 70
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 71
    .line 72
    if-ne p1, p2, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->b:Lcom/transsion/home/adapter/operateUGC/provider/w;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-static {p2, v0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/w;->B(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_3
    return-void
.end method
