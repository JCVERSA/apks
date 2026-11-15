.class public final synthetic Lee2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final synthetic c:Lcom/yandex/div/core/view2/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lee2;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p2, p0, Lee2;->c:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lee2;->d:Landroid/view/View;

    iput-object p4, p0, Lee2;->e:Ljava/util/List;

    iput-object p5, p0, Lee2;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lee2;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v1, p0, Lee2;->c:Lcom/yandex/div/core/view2/a;

    iget-object v2, p0, Lee2;->d:Landroid/view/View;

    iget-object v3, p0, Lee2;->e:Ljava/util/List;

    iget-object v4, p0, Lee2;->f:Ljava/util/List;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->d(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
