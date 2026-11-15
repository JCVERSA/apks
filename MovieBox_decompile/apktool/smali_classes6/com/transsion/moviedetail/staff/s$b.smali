.class final Lcom/transsion/moviedetail/staff/s$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/staff/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Lqm/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p2, Lqm/a;

    .line 16
    .line 17
    invoke-virtual {p2}, Lqm/a;->a()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p2}, Lqm/a;->c()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lt v0, p2, :cond_0

    .line 26
    .line 27
    sget p2, Lcom/transsion/moviedetail/R$id;->tv_load:I

    .line 28
    .line 29
    sget v0, Lcom/transsion/moviedetail/R$string;->movie_staff_show_less:I

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 32
    .line 33
    .line 34
    sget p2, Lcom/transsion/moviedetail/R$id;->iv_arrow:I

    .line 35
    .line 36
    sget v0, Lcom/transsion/moviedetail/R$mipmap;->movie_arrow_up:I

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget p2, Lcom/transsion/moviedetail/R$id;->tv_load:I

    .line 43
    .line 44
    sget v0, Lcom/transsion/moviedetail/R$string;->movie_staff_show_more:I

    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 47
    .line 48
    .line 49
    sget p2, Lcom/transsion/moviedetail/R$id;->iv_arrow:I

    .line 50
    .line 51
    sget v0, Lcom/transsion/moviedetail/R$mipmap;->movie_arrow_down:I

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_staff_item_more:I

    .line 2
    .line 3
    return v0
.end method
