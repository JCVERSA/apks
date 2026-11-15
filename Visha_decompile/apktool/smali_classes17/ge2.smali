.class public final synthetic Lge2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/json/expressions/Expression;

.field public final synthetic c:Lcom/yandex/div/core/view2/a;

.field public final synthetic d:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lge2;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lge2;->c:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lge2;->d:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p4, p0, Lge2;->e:Landroid/view/View;

    iput-object p5, p0, Lge2;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lge2;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object v1, p0, Lge2;->c:Lcom/yandex/div/core/view2/a;

    iget-object v2, p0, Lge2;->d:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v3, p0, Lge2;->e:Landroid/view/View;

    iget-object v4, p0, Lge2;->f:Ljava/util/List;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->c(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
