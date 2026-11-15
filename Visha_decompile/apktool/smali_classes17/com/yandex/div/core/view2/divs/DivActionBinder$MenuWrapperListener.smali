.class public final Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;
.super Lzt7$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivActionBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MenuWrapperListener"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/a;

.field public final b:Ljava/util/List;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/DivActionBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-direct {p0}, Lzt7$a$a;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->a:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction$MenuItem;Loj3;Lcom/yandex/div/core/view2/divs/DivActionBinder;ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction$MenuItem;Loj3;Lcom/yandex/div/core/view2/divs/DivActionBinder;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static final d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction$MenuItem;Loj3;Lcom/yandex/div/core/view2/divs/DivActionBinder;ILandroid/view/MenuItem;)Z
    .locals 8

    const-string v0, "$divView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$expressionResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p0

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;-><init>(Lcom/yandex/div2/DivAction$MenuItem;Loj3;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/Div2View;I)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/Div2View;->bulkActions$div_release(Lc74;)V

    iget-boolean p0, p5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 11

    const-string v0, "popupMenu"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->a:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->a:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "popupMenu.menu"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div2/DivAction$MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    iget-object v1, v3, Lcom/yandex/div2/DivAction$MenuItem;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v7}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    new-instance v10, Lke2;

    move-object v1, v10

    move-object v2, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lke2;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction$MenuItem;Loj3;Lcom/yandex/div/core/view2/divs/DivActionBinder;I)V

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    return-void
.end method
