.class public final Lcom/yandex/div/core/view2/divs/DivInputBinder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->S(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div2/DivInput;Loj3;Lcom/yandex/div/core/view2/Div2View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/DivInputBinder;

.field public final synthetic d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field public final synthetic e:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic f:Loj3;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->c:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->e:Lcom/yandex/div/core/view2/Div2View;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->f:Loj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfnb;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->c:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->d:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->e:Lcom/yandex/div/core/view2/Div2View;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$c;->f:Loj3;

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->p(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lfnb;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
