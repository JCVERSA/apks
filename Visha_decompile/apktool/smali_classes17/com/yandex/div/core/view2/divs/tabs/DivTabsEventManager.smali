.class public final Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/yandex/div/internal/widget/tabs/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Lcom/yandex/div/internal/widget/tabs/b$c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0000\u0018\u0000 32\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u00014B7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\u001f\u0010!\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010$R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008%\u0010/R\u0016\u00102\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101\u00a8\u00065"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Lcom/yandex/div/internal/widget/tabs/b$c;",
        "Lcom/yandex/div2/DivAction;",
        "Lcom/yandex/div/core/view2/a;",
        "context",
        "Lcom/yandex/div/core/view2/divs/DivActionBinder;",
        "actionBinder",
        "Lgd2;",
        "div2Logger",
        "Lcom/yandex/div/core/view2/DivVisibilityActionTracker;",
        "visibilityActionTracker",
        "Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;",
        "tabLayout",
        "Lcom/yandex/div2/DivTabs;",
        "div",
        "<init>",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lgd2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;)V",
        "",
        "position",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "Lzfb;",
        "onPageScrolled",
        "(IFI)V",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "c",
        "action",
        "tabPosition",
        "b",
        "(Lcom/yandex/div2/DivAction;I)V",
        "Lcom/yandex/div/core/view2/a;",
        "Lcom/yandex/div/core/view2/divs/DivActionBinder;",
        "d",
        "Lgd2;",
        "e",
        "Lcom/yandex/div/core/view2/DivVisibilityActionTracker;",
        "f",
        "Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;",
        "g",
        "Lcom/yandex/div2/DivTabs;",
        "getDiv",
        "()Lcom/yandex/div2/DivTabs;",
        "(Lcom/yandex/div2/DivTabs;)V",
        "h",
        "I",
        "currentPagePosition",
        "i",
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
.field public static final i:Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager$a;


# instance fields
.field public final b:Lcom/yandex/div/core/view2/a;

.field public final c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final d:Lgd2;

.field public final e:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

.field public final f:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

.field public g:Lcom/yandex/div2/DivTabs;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->i:Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lgd2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2Logger"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityActionTracker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabLayout"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->d:Lgd2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->e:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->f:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->g:Lcom/yandex/div2/DivTabs;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->h:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/yandex/div2/DivAction;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b(Lcom/yandex/div2/DivAction;I)V

    return-void
.end method

.method public b(Lcom/yandex/div2/DivAction;I)V
    .locals 12

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lne5;->a:Lne5;

    sget-object v1, Lcom/yandex/div/logging/Severity;->WARNING:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v0, v1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    const-string v2, "non-null menuItems ignored in title click action"

    const-string v3, "DivTabsEventManager"

    invoke-virtual {v0, v1, v3, v2}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->d:Lgd2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p1}, Lgd2;->x(Lcom/yandex/div/core/view2/Div2View;Loj3;ILcom/yandex/div2/DivAction;)V

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    const/16 v10, 0x30

    const/4 v11, 0x0

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v11}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->E(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;ILjava/lang/Object;)Z

    return-void
.end method

.method public final c(I)V
    .locals 5

    iget v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->h:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->g:Lcom/yandex/div2/DivTabs;

    iget-object v1, v1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->e:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->f:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->o(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->f:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->g:Lcom/yandex/div2/DivTabs;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->e:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->f:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iget-object v4, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->s(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->f:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1, v2, v0}, Lcom/yandex/div/core/view2/Div2View;->bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V

    iput p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->h:I

    return-void
.end method

.method public final d(Lcom/yandex/div2/DivTabs;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->g:Lcom/yandex/div2/DivTabs;

    return-void
.end method

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

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->d:Lgd2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lgd2;->h(Lcom/yandex/div/core/view2/Div2View;I)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->c(I)V

    return-void
.end method
