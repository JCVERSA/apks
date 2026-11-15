.class public final Lcom/yandex/div/core/view2/items/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/items/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/items/b$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div/core/view2/items/b$a;Ljava/lang/String;Lsv2;Loj3;Lcom/yandex/div/core/view2/items/Direction;ILjava/lang/Object;)Lcom/yandex/div/core/view2/items/b;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lcom/yandex/div/core/view2/items/Direction;->NEXT:Lcom/yandex/div/core/view2/items/Direction;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/items/b$a;->a(Ljava/lang/String;Lsv2;Loj3;Lcom/yandex/div/core/view2/items/Direction;)Lcom/yandex/div/core/view2/items/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lsv2;Loj3;Lcom/yandex/div/core/view2/items/Direction;)Lcom/yandex/div/core/view2/items/b;
    .locals 0

    const-string p0, "id"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "direction"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lsv2;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object p2, Lcom/yandex/div/core/view2/items/DivViewWithItems;->c:Lcom/yandex/div/core/view2/items/DivViewWithItems$a;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/items/DivViewWithItems$a;->a()Lcom/yandex/div/core/view2/items/DivViewWithItems;

    move-result-object p2

    if-nez p2, :cond_6

    instance-of p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    if-eqz p2, :cond_3

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getDiv()Lcom/yandex/div2/Div$d;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p2

    iget-object p2, p2, Lcom/yandex/div2/DivGallery;->C:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivGallery$ScrollMode;

    sget-object p3, Lcom/yandex/div/core/view2/items/DivViewWithItems$a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    new-instance p2, Lcom/yandex/div/core/view2/items/DivViewWithItems$c;

    invoke-direct {p2, p0, p4}, Lcom/yandex/div/core/view2/items/DivViewWithItems$c;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/items/Direction;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    new-instance p2, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;

    invoke-direct {p2, p0, p4}, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/items/Direction;)V

    goto :goto_0

    :cond_3
    instance-of p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-eqz p2, :cond_4

    new-instance p2, Lcom/yandex/div/core/view2/items/DivViewWithItems$b;

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$b;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    goto :goto_0

    :cond_4
    instance-of p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    if-eqz p2, :cond_5

    new-instance p2, Lcom/yandex/div/core/view2/items/DivViewWithItems$d;

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$d;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    goto :goto_0

    :cond_5
    move-object p2, p1

    :cond_6
    :goto_0
    if-nez p2, :cond_7

    return-object p1

    :cond_7
    new-instance p0, Lcom/yandex/div/core/view2/items/b;

    invoke-direct {p0, p2, p1}, Lcom/yandex/div/core/view2/items/b;-><init>(Lcom/yandex/div/core/view2/items/DivViewWithItems;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
