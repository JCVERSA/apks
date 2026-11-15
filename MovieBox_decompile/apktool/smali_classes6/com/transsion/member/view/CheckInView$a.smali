.class final Lcom/transsion/member/view/CheckInView$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/CheckInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic g(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/member/view/CheckInView$a;->i(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/member/view/CheckInView;->access$getClickListener$p(Lcom/transsion/member/view/CheckInView;)Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/view/CheckInView;->access$getMaxLength$p(Lcom/transsion/member/view/CheckInView;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/view/CheckInView;->access$getViewBinder$p(Lcom/transsion/member/view/CheckInView;)Lcom/transsion/member/view/CheckInView$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/transsion/member/view/CheckInView$d;->b(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x3

    .line 15
    :goto_0
    return p1
.end method

.method public h(Lcom/transsion/member/view/CheckInView$b;I)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/member/view/CheckInView;->access$getViewBinder$p(Lcom/transsion/member/view/CheckInView;)Lcom/transsion/member/view/CheckInView$d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/transsion/member/view/CheckInView$d;->a(Lcom/transsion/member/view/CheckInView$b;I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 20
    .line 21
    new-instance v2, Lcom/transsion/member/view/b;

    .line 22
    .line 23
    invoke-direct {v2, v1, p2, p1}, Lcom/transsion/member/view/b;-><init>(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/CheckInView$b;
    .locals 5

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/member/view/CheckInView$b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    packed-switch p2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getUnActiveItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getUnActiveEndLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getActiveEndLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getDoneEndLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getUnActiveItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 57
    .line 58
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getActiveItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_0

    .line 63
    :pswitch_5
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getDoneItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    :goto_0
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v2, "inflate(...)"

    .line 75
    .line 76
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/member/view/CheckInView$b;-><init>(Lcom/transsion/member/view/CheckInView;Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/member/view/CheckInView$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/CheckInView$a;->h(Lcom/transsion/member/view/CheckInView$b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/CheckInView$a;->j(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/CheckInView$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
