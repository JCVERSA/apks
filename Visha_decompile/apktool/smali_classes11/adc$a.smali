.class public Ladc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladc;->s(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Z

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:I

.field public final synthetic e:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([ZLandroidx/viewpager2/widget/ViewPager2;I[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ladc$a;->b:[Z

    iput-object p2, p0, Ladc$a;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput p3, p0, Ladc$a;->d:I

    iput-object p4, p0, Ladc$a;->e:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p5, p0, Ladc$a;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Ladc$a;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladc$a;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, p0}, Ladc;->h(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    iget v0, p0, Ladc$a;->d:I

    iget-object v2, p0, Ladc$a;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ladc;->r(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ladc$a;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, p0}, Ladc;->h(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Ladc$a;->e:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object p0, p0, Ladc$a;->f:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
