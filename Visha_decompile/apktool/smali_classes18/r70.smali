.class public Lr70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu70;

.field public final b:Lkl;

.field public final c:Landroidx/viewpager2/widget/CompositePageTransformer;

.field public d:Landroidx/viewpager2/widget/MarginPageTransformer;

.field public e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu70;

    invoke-direct {v0}, Lu70;-><init>()V

    iput-object v0, p0, Lr70;->a:Lu70;

    new-instance v1, Lkl;

    invoke-direct {v1, v0}, Lkl;-><init>(Lu70;)V

    iput-object v1, p0, Lr70;->b:Lkl;

    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    iput-object v0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0

    iget-object p0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lr70;->g()V

    new-instance v0, Landroidx/viewpager2/widget/MarginPageTransformer;

    iget-object v1, p0, Lr70;->a:Lu70;

    invoke-virtual {v1}, Lu70;->i()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    iput-object v0, p0, Lr70;->d:Landroidx/viewpager2/widget/MarginPageTransformer;

    iget-object p0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public c()Lu70;
    .locals 1

    iget-object v0, p0, Lr70;->a:Lu70;

    if-nez v0, :cond_0

    new-instance v0, Lu70;

    invoke-direct {v0}, Lu70;-><init>()V

    iput-object v0, p0, Lr70;->a:Lu70;

    :cond_0
    iget-object p0, p0, Lr70;->a:Lu70;

    return-object p0
.end method

.method public d()Landroidx/viewpager2/widget/CompositePageTransformer;
    .locals 0

    iget-object p0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    return-object p0
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iget-object p0, p0, Lr70;->b:Lkl;

    invoke-virtual {p0, p1, p2}, Lkl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lr70;->e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lr70;->d:Landroidx/viewpager2/widget/MarginPageTransformer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public h(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0

    iget-object p0, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public i(ZF)V
    .locals 6

    invoke-virtual {p0}, Lr70;->f()V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;

    iget-object v0, p0, Lr70;->a:Lu70;

    invoke-virtual {v0}, Lu70;->h()I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;-><init>(IFFFF)V

    iput-object p1, p0, Lr70;->e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zhpan/bannerview/transform/ScaleInTransformer;

    invoke-direct {p1, p2}, Lcom/zhpan/bannerview/transform/ScaleInTransformer;-><init>(F)V

    iput-object p1, p0, Lr70;->e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    :goto_0
    iget-object p1, p0, Lr70;->c:Landroidx/viewpager2/widget/CompositePageTransformer;

    iget-object p0, p0, Lr70;->e:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public j(I)V
    .locals 0

    iget-object p0, p0, Lr70;->a:Lu70;

    invoke-virtual {p0, p1}, Lu70;->M(I)V

    return-void
.end method
