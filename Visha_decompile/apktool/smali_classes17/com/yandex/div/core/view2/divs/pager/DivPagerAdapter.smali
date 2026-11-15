.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;
.super Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/div/core/view2/divs/DivCollectionAdapter<",
        "Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0000\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001[BS\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\u001f\u0010 \u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010\'\u001a\u00020&2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010*\u001a\u00020&2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008.\u0010-J\u0017\u00100\u001a\u00020&2\u0006\u0010/\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u00080\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010;R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001d\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00040>8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\"\u0010G\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u00100\u001a\u0004\u0008E\u0010#\"\u0004\u0008F\u0010-R\"\u0010N\u001a\u00020H8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008?\u0010K\"\u0004\u0008L\u0010MR*\u0010S\u001a\u00020\u00112\u0006\u0010O\u001a\u00020\u00118\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010;\u001a\u0004\u0008I\u0010P\"\u0004\u0008Q\u0010RR\u0016\u0010U\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u00100R\u0016\u0010V\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u00100R\u0014\u0010X\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010PR\u0011\u0010Y\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010#R\u0014\u0010Z\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010#\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;",
        "Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;",
        "Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;",
        "",
        "Lzl2;",
        "items",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "Lrg2;",
        "divBinder",
        "Landroid/util/SparseArray;",
        "",
        "pageTranslations",
        "Lcom/yandex/div/core/view2/DivViewCreator;",
        "viewCreator",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "path",
        "",
        "accessibilityEnabled",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;",
        "pagerView",
        "<init>",
        "(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V",
        "",
        "visibleItemIndex",
        "G",
        "(I)I",
        "rawPosition",
        "getRealPosition",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "K",
        "(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "Lzfb;",
        "J",
        "(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;I)V",
        "newItems",
        "y",
        "(Ljava/util/List;)V",
        "s",
        "(I)V",
        "r",
        "originalPosition",
        "I",
        "t",
        "Lcom/yandex/div/core/view2/a;",
        "u",
        "Lrg2;",
        "v",
        "Landroid/util/SparseArray;",
        "w",
        "Lcom/yandex/div/core/view2/DivViewCreator;",
        "x",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "Z",
        "z",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;",
        "Lg3;",
        "A",
        "Lg3;",
        "D",
        "()Lg3;",
        "itemsToShow",
        "B",
        "F",
        "N",
        "orientation",
        "Lcom/yandex/div2/DivPager$ItemAlignment;",
        "C",
        "Lcom/yandex/div2/DivPager$ItemAlignment;",
        "()Lcom/yandex/div2/DivPager$ItemAlignment;",
        "L",
        "(Lcom/yandex/div2/DivPager$ItemAlignment;)V",
        "crossAxisAlignment",
        "value",
        "()Z",
        "M",
        "(Z)V",
        "infiniteScrollEnabled",
        "E",
        "removedItems",
        "currentItem",
        "H",
        "isHorizontal",
        "currentRealItem",
        "offsetToRealItem",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final G:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$a;


# instance fields
.field public final A:Lg3;

.field public B:I

.field public C:Lcom/yandex/div2/DivPager$ItemAlignment;

.field public D:Z

.field public E:I

.field public F:I

.field public final t:Lcom/yandex/div/core/view2/a;

.field public final u:Lrg2;

.field public final v:Landroid/util/SparseArray;

.field public final w:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final x:Lcom/yandex/div/core/state/DivStatePath;

.field public final y:Z

.field public final z:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->G:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageTranslations"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagerView"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->t:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->u:Lrg2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->v:Landroid/util/SparseArray;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->w:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->x:Lcom/yandex/div/core/state/DivStatePath;

    iput-boolean p7, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->y:Z

    iput-object p8, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->z:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    new-instance p1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;-><init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->A:Lg3;

    sget-object p1, Lcom/yandex/div2/DivPager$ItemAlignment;->START:Lcom/yandex/div2/DivPager$ItemAlignment;

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->C:Lcom/yandex/div2/DivPager$ItemAlignment;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    return-void
.end method

.method private final H()Z
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->B:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic z(Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->H()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()Lcom/yandex/div2/DivPager$ItemAlignment;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->C:Lcom/yandex/div2/DivPager$ItemAlignment;

    return-object p0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->z:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final C()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D:Z

    return p0
.end method

.method public final D()Lg3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->A:Lg3;

    return-object p0
.end method

.method public final E()I
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final F()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->B:I

    return p0
.end method

.method public final G(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public final I(I)V
    .locals 3

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    if-gt v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public J(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->A:Lg3;

    invoke-virtual {v0, p2}, Lg3;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lzl2;->d()Loj3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/div/core/view2/a;->c(Loj3;)Lcom/yandex/div/core/view2/a;

    move-result-object v1

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;->h(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->H()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;
    .locals 9

    const-string p2, "parent"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object p1

    new-instance p2, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$onCreateViewHolder$view$1;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$onCreateViewHolder$view$1;-><init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    invoke-direct {v2, p1, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;-><init>(Landroid/content/Context;Lc74;)V

    new-instance p1, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->t:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->u:Lrg2;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->w:Lcom/yandex/div/core/view2/DivViewCreator;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->x:Lcom/yandex/div/core/state/DivStatePath;

    iget-boolean v6, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->y:Z

    new-instance v7, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$onCreateViewHolder$1;

    invoke-direct {v7, p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$onCreateViewHolder$1;-><init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    new-instance v8, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$onCreateViewHolder$2;

    invoke-direct {v8, p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$onCreateViewHolder$2;-><init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLc74;Lc74;)V

    return-object p1
.end method

.method public final L(Lcom/yandex/div2/DivPager$ItemAlignment;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->C:Lcom/yandex/div2/DivPager$ItemAlignment;

    return-void
.end method

.method public final M(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D:Z

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->z:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    :goto_0
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setCurrentItem$div_release(I)V

    return-void
.end method

.method public final N(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->B:I

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->A:Lg3;

    invoke-virtual {p0}, Lr2;->size()I

    move-result p0

    return p0
.end method

.method public final getRealPosition(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->J(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->K(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    if-lt v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->I(I)V

    iget p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    if-lt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    :cond_2
    return-void
.end method

.method public s(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E:I

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->I(I)V

    iget p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    :cond_2
    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 3

    const-string v0, "newItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E:I

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->z:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v1

    iput v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    invoke-super {p0, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;->y(Ljava/util/List;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->z:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iget v2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->E:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->F:I

    :goto_0
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setCurrentItem$div_release(I)V

    return-void
.end method
