.class public final Lcom/transsion/rewardscenter/redeem/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/redeem/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/transsion/rewardscenter/redeem/d$a;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 4
    iput p1, p0, Lcom/transsion/rewardscenter/redeem/d$a;->a:I

    .line 5
    iput p2, p0, Lcom/transsion/rewardscenter/redeem/d$a;->b:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/d$a;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/d$a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    add-int/lit8 p3, p3, -0x1

    .line 30
    .line 31
    if-ge p2, p3, :cond_0

    .line 32
    .line 33
    iget p2, p0, Lcom/transsion/rewardscenter/redeem/d$a;->a:I

    .line 34
    .line 35
    iget p3, p0, Lcom/transsion/rewardscenter/redeem/d$a;->b:I

    .line 36
    .line 37
    add-int/2addr p2, p3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget p2, p0, Lcom/transsion/rewardscenter/redeem/d$a;->a:I

    .line 40
    .line 41
    :goto_0
    const/4 p3, 0x0

    .line 42
    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 11

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    sget v0, Lcom/transsion/rewardscenter/R$color;->prize_list_divider:I

    .line 21
    .line 22
    invoke-static {p3, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/d$a;->c:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const/4 v0, 0x1

    .line 36
    sub-int/2addr p3, v0

    .line 37
    :goto_0
    if-ge v0, p3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    sub-int/2addr v4, v5

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    .line 73
    add-int/2addr v1, v2

    .line 74
    iget v2, p0, Lcom/transsion/rewardscenter/redeem/d$a;->b:I

    .line 75
    .line 76
    add-int/2addr v2, v1

    .line 77
    int-to-float v6, v3

    .line 78
    int-to-float v7, v1

    .line 79
    int-to-float v8, v4

    .line 80
    int-to-float v9, v2

    .line 81
    iget-object v10, p0, Lcom/transsion/rewardscenter/redeem/d$a;->c:Landroid/graphics/Paint;

    .line 82
    .line 83
    move-object v5, p1

    .line 84
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
