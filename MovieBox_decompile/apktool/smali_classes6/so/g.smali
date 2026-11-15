.class public final Lso/g;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lso/g;->a:Landroid/view/View;

    .line 10
    .line 11
    sget v0, Lcom/transsion/publish/R$id;->image:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "findViewById(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lso/g;->b:Landroid/widget/ImageView;

    .line 25
    .line 26
    sget v0, Lcom/transsion/publish/R$id;->desc:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    .line 36
    .line 37
    iput-object p1, p0, Lso/g;->c:Lcom/tn/lib/widget/TnTextView;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final f()Lcom/tn/lib/widget/TnTextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lso/g;->c:Lcom/tn/lib/widget/TnTextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lso/g;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lso/g;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method
