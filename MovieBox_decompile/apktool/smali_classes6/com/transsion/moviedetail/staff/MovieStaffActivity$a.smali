.class public final Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/MovieStaffActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/MovieStaffActivity;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->e:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->f:I

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->g:I

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->h:I

    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->i:I

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->e:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsion/moviedetail/staff/MovieStaffActivity;->s0(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)Lcom/transsion/moviedetail/staff/s;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "mMovieStaffAdapter"

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget v0, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->f:I

    .line 26
    .line 27
    rem-int/2addr p1, v0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->g:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->g:I

    .line 39
    .line 40
    iget v0, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->h:I

    .line 41
    .line 42
    add-int/2addr p1, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->i:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget p1, p0, Lcom/transsion/moviedetail/staff/MovieStaffActivity$a;->i:I

    .line 48
    .line 49
    :goto_1
    return p1
.end method
