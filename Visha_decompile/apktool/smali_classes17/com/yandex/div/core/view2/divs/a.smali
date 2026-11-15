.class public final synthetic Lcom/yandex/div/core/view2/divs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivInputBinder;

.field public final synthetic c:Lcom/yandex/div/core/view2/a;

.field public final synthetic d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/a;->b:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/a;->c:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/a;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/a;->b:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/a;->c:Lcom/yandex/div/core/view2/a;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/a;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/a;->e:Ljava/util/List;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->a(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/util/List;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
