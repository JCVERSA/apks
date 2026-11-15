.class public final Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/yandex/div/internal/widget/tabs/b$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Lcom/yandex/div/internal/widget/tabs/b$c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u001f\u0010 \u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\"R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008#\u0010/\u00a8\u00060"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Lcom/yandex/div/internal/widget/tabs/b$c;",
        "Lcom/yandex/div2/DivAction;",
        "Lcom/yandex/div/core/view2/a;",
        "context",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "path",
        "Lgd2;",
        "div2Logger",
        "Lrda;",
        "tabsStateCache",
        "Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;",
        "runtimeVisitor",
        "Lcom/yandex/div2/DivTabs;",
        "div",
        "<init>",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lgd2;Lrda;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;Lcom/yandex/div2/DivTabs;)V",
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
        "action",
        "tabPosition",
        "b",
        "(Lcom/yandex/div2/DivAction;I)V",
        "Lcom/yandex/div/core/view2/a;",
        "c",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "d",
        "Lgd2;",
        "e",
        "Lrda;",
        "f",
        "Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;",
        "g",
        "Lcom/yandex/div2/DivTabs;",
        "getDiv",
        "()Lcom/yandex/div2/DivTabs;",
        "(Lcom/yandex/div2/DivTabs;)V",
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


# instance fields
.field public final b:Lcom/yandex/div/core/view2/a;

.field public final c:Lcom/yandex/div/core/state/DivStatePath;

.field public final d:Lgd2;

.field public final e:Lrda;

.field public final f:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

.field public g:Lcom/yandex/div2/DivTabs;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lgd2;Lrda;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;Lcom/yandex/div2/DivTabs;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2Logger"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabsStateCache"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeVisitor"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->b:Lcom/yandex/div/core/view2/a;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->c:Lcom/yandex/div/core/state/DivStatePath;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->d:Lgd2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->e:Lrda;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->f:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->g:Lcom/yandex/div2/DivTabs;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/yandex/div2/DivAction;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->b(Lcom/yandex/div2/DivAction;I)V

    return-void
.end method

.method public b(Lcom/yandex/div2/DivAction;I)V
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/yandex/div2/DivTabs;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->g:Lcom/yandex/div2/DivTabs;

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
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->d:Lgd2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lgd2;->h(Lcom/yandex/div/core/view2/Div2View;I)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->e:Lrda;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v1}, Lei2;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.divView.dataTag.id"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->c:Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {v2}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lrda;->b(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->f:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->g:Lcom/yandex/div2/DivTabs;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->c:Lcom/yandex/div/core/state/DivStatePath;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/state/DivStatePath;Loj3;)V

    return-void
.end method
