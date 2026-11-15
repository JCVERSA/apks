.class public final Lcom/transsion/member/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/member/adapter/a;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/member/adapter/a;->b:I

    .line 7
    .line 8
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
    iget p3, p0, Lcom/transsion/member/adapter/a;->a:I

    .line 26
    .line 27
    rem-int/2addr p2, p3

    .line 28
    iget p4, p0, Lcom/transsion/member/adapter/a;->b:I

    .line 29
    .line 30
    sub-int v0, p3, p2

    .line 31
    .line 32
    mul-int/2addr v0, p4

    .line 33
    div-int/2addr v0, p3

    .line 34
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    mul-int/2addr p4, p2

    .line 39
    div-int/2addr p4, p3

    .line 40
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    return-void
.end method
