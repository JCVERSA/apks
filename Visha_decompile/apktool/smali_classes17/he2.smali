.class public final synthetic Lhe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final synthetic c:Lcom/yandex/div/core/view2/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/yandex/div2/DivAction;

.field public final synthetic f:Lcom/yandex/div/json/expressions/Expression;

.field public final synthetic g:Lzt7;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhe2;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p2, p0, Lhe2;->c:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lhe2;->d:Landroid/view/View;

    iput-object p4, p0, Lhe2;->e:Lcom/yandex/div2/DivAction;

    iput-object p5, p0, Lhe2;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lhe2;->g:Lzt7;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lhe2;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v1, p0, Lhe2;->c:Lcom/yandex/div/core/view2/a;

    iget-object v2, p0, Lhe2;->d:Landroid/view/View;

    iget-object v3, p0, Lhe2;->e:Lcom/yandex/div2/DivAction;

    iget-object v4, p0, Lhe2;->f:Lcom/yandex/div/json/expressions/Expression;

    iget-object v5, p0, Lhe2;->g:Lzt7;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->g(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;)V

    return-void
.end method
