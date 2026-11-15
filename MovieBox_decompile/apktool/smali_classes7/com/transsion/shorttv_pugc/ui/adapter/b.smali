.class public final Lcom/transsion/shorttv_pugc/ui/adapter/b;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# instance fields
.field private final a:Lqr/e0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

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
    invoke-static {p1}, Lqr/e0;->a(Landroid/view/View;)Lqr/e0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "bind(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/b;->a:Lqr/e0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f()Lqr/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/b;->a:Lqr/e0;

    .line 2
    .line 3
    return-object v0
.end method
