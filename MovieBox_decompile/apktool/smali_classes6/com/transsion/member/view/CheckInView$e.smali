.class public final Lcom/transsion/member/view/CheckInView$e;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/CheckInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field final synthetic d:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/CheckInView;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$e;->d:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/member/view/CheckInView$e;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/member/view/CheckInView$e;->b:I

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/member/view/CheckInView$e;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 2

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
    iget p3, p0, Lcom/transsion/member/view/CheckInView$e;->a:I

    .line 26
    .line 27
    rem-int p4, p2, p3

    .line 28
    .line 29
    iget v0, p0, Lcom/transsion/member/view/CheckInView$e;->b:I

    .line 30
    .line 31
    mul-int v1, p4, v0

    .line 32
    .line 33
    div-int/2addr v1, p3

    .line 34
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    add-int/lit8 p4, p4, 0x1

    .line 37
    .line 38
    mul-int/2addr p4, v0

    .line 39
    div-int/2addr p4, p3

    .line 40
    sub-int/2addr v0, p4

    .line 41
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    if-lt p2, p3, :cond_0

    .line 44
    .line 45
    iget p2, p0, Lcom/transsion/member/view/CheckInView$e;->c:I

    .line 46
    .line 47
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    :cond_0
    return-void
.end method
