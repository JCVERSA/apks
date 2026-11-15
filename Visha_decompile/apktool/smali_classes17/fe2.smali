.class public final synthetic Lfe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final synthetic c:Lcom/yandex/div2/DivAction;

.field public final synthetic d:Lcom/yandex/div/core/view2/a;

.field public final synthetic e:Lcom/yandex/div/json/expressions/Expression;

.field public final synthetic f:Lzt7;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe2;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p2, p0, Lfe2;->c:Lcom/yandex/div2/DivAction;

    iput-object p3, p0, Lfe2;->d:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lfe2;->e:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lfe2;->f:Lzt7;

    iput-object p6, p0, Lfe2;->g:Landroid/view/View;

    iput-object p7, p0, Lfe2;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 8

    iget-object v0, p0, Lfe2;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v1, p0, Lfe2;->c:Lcom/yandex/div2/DivAction;

    iget-object v2, p0, Lfe2;->d:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lfe2;->e:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, p0, Lfe2;->f:Lzt7;

    iget-object v5, p0, Lfe2;->g:Landroid/view/View;

    iget-object v6, p0, Lfe2;->h:Ljava/util/List;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->b(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
