.class public final Ls70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt70;

.field public final b:Lll;

.field public final c:Landroidx/viewpager2/widget/CompositePageTransformer;

.field public d:Landroidx/viewpager2/widget/MarginPageTransformer;

.field public final e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt70;

    invoke-direct {v0}, Lt70;-><init>()V

    iput-object v0, p0, Ls70;->a:Lt70;

    new-instance v1, Lll;

    invoke-direct {v1, v0}, Lll;-><init>(Lt70;)V

    iput-object v1, p0, Ls70;->b:Lll;

    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    iput-object v0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1

    const-string v0, "transformer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Ls70;->g()V

    new-instance v0, Landroidx/viewpager2/widget/MarginPageTransformer;

    iget-object v1, p0, Ls70;->a:Lt70;

    invoke-virtual {v1}, Lt70;->e()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    iput-object v0, p0, Ls70;->d:Landroidx/viewpager2/widget/MarginPageTransformer;

    iget-object p0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public final c()Landroidx/viewpager2/widget/CompositePageTransformer;
    .locals 0

    iget-object p0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    return-object p0
.end method

.method public final d()Lt70;
    .locals 0

    iget-object p0, p0, Ls70;->a:Lt70;

    return-object p0
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls70;->b:Lll;

    invoke-virtual {p0, p1, p2}, Lll;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ls70;->e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ls70;->d:Landroidx/viewpager2/widget/MarginPageTransformer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public final h(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1

    const-string v0, "transformer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public final i(I)V
    .locals 0

    iget-object p0, p0, Ls70;->a:Lt70;

    invoke-virtual {p0, p1}, Lt70;->w(I)V

    return-void
.end method
