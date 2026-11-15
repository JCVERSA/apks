.class public Lcom/transsion/utils/CustomLinearLayoutManager$a;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/utils/CustomLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    invoke-static {p2, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 4

    iget v0, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->b:I

    const/4 v1, -0x1

    const v2, 0x3e4ccccd    # 0.2f

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    iget v3, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->b:I

    mul-int/2addr v1, v3

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->b:I

    div-int/2addr v0, p0

    const/16 p0, 0x14

    if-ge v0, p0, :cond_1

    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_0

    :cond_1
    const/16 p0, 0x3c

    if-ge v0, p0, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    const/16 p0, 0x78

    if-ge v0, p0, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/16 p0, 0x12c

    if-ge v0, p0, :cond_4

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_4
    :goto_0
    return v2
.end method

.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/utils/CustomLinearLayoutManager$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p2, 0x422c0000    # 43.0f

    invoke-static {p0, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr p1, p0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/utils/CustomLinearLayoutManager$a;->a()F

    move-result p0

    mul-float/2addr p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateSpeedPerPixel: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CustomLinearLayoutManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
