.class Lcom/mgtv/a/d/f/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$10;->a:Lcom/mgtv/a/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$10;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->j(Lcom/mgtv/a/d/f/a;)I

    move-result v0

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$10;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->k(Lcom/mgtv/a/d/f/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-static {v0, p1}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgtv/a/d/f/a;Lcom/mgmi/model/VASTAd;)Lcom/mgmi/model/VASTAd;

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$10;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->c(Lcom/mgtv/a/d/f/a;)Lcom/mgmi/model/VASTAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgtv/a/d/f/a;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$10;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->l(Lcom/mgtv/a/d/f/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-static {p0, p1}, Lcom/mgtv/a/d/f/a;->b(Lcom/mgtv/a/d/f/a;Lcom/mgmi/model/VASTAd;)V

    return-void
.end method
