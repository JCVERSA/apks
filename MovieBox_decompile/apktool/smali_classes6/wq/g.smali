.class public final synthetic Lwq/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/slider/a;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$a0;

.field public final synthetic b:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

.field public final synthetic c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$a0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwq/g;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 5
    .line 6
    iput-object p2, p0, Lwq/g;->b:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 7
    .line 8
    iput-object p3, p0, Lwq/g;->c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;FZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lwq/g;->b(Lcom/google/android/material/slider/RangeSlider;FZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lwq/g;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 2
    .line 3
    iget-object v1, p0, Lwq/g;->b:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 4
    .line 5
    iget-object v2, p0, Lwq/g;->c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->h(Landroidx/recyclerview/widget/RecyclerView$a0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
