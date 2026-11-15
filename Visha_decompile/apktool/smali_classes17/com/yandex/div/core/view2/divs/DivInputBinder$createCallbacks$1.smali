.class public Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->w(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/util/mask/BaseInputMask;Lz05;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/util/mask/BaseInputMask;

.field public final synthetic b:Lz05;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/util/mask/BaseInputMask;Lz05;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/lang/String;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->a:Lcom/yandex/div/core/util/mask/BaseInputMask;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->b:Lz05;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;Landroid/text/Editable;Le74;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->d(Landroid/text/Editable;Le74;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Le74;)V
    .locals 2

    const-string v0, "valueUpdater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;-><init>(Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;Le74;)V

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;->addAfterTextChangeAction(Le74;)V

    return-void
.end method

.method public final d(Landroid/text/Editable;Le74;)V
    .locals 8

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->a:Lcom/yandex/div/core/util/mask/BaseInputMask;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->l()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->f(Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;

    :cond_4
    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->p()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2c

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lg1a;->M(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->b:Lz05;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {v0}, Lz05;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0, p1}, Lz05;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lz05;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lz05;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_7
    invoke-virtual {v0, p1}, Lz05;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p0

    invoke-virtual {v0, p0}, Lz05;->e(I)V

    :cond_8
    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->a:Lcom/yandex/div/core/util/mask/BaseInputMask;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->s(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->f(Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->b:Lz05;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lz05;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lz05;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lz05;->e(I)V

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/Div2View;->setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
