.class public Ladc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladc;->t(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ladc$b;->b:[I

    iput-object p2, p0, Ladc$b;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Ladc$b;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Ladc$b;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladc$b;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, p0}, Ladc;->h(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Ladc$b;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Ladc;->q(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ladc$b;->b:[I

    const/4 v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Ladc$b;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, p0}, Ladc;->h(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Ladc$b;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    iget-object p0, p0, Ladc$b;->d:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
