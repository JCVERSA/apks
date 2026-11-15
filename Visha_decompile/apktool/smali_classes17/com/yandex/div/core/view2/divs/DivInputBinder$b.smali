.class public final Lcom/yandex/div/core/view2/divs/DivInputBinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->u(Lfnb;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ltv2;

.field public final synthetic c:Lfnb;

.field public final synthetic d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field public final synthetic e:Z

.field public final synthetic f:Lwc3;

.field public final synthetic g:Ljava/lang/IllegalArgumentException;


# direct methods
.method public constructor <init>(Ltv2;Lfnb;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;ZLwc3;Ljava/lang/IllegalArgumentException;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->b:Ltv2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->c:Lfnb;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-boolean p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->e:Z

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->f:Lwc3;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->g:Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->b:Ltv2;

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->c:Lfnb;

    invoke-virtual {p2}, Lfnb;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv2;->a(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->e:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLabelFor(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->f:Lwc3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->g:Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1, p0}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->f:Lwc3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$b;->g:Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1, p0}, Lwc3;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
