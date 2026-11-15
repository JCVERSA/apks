.class public final Lcom/yandex/div2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/t;->b(Lex7;Lcom/yandex/div2/DivActionTypedTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTyped;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionTypedTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTyped;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivActionTyped$a;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$a;->c()Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$a;-><init>(Lcom/yandex/div2/DivActionAnimatorStart;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivActionTyped$b;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsd2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$b;->c()Lcom/yandex/div2/DivActionAnimatorStopTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lsd2;->b(Lex7;Lcom/yandex/div2/DivActionAnimatorStopTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$b;-><init>(Lcom/yandex/div2/DivActionAnimatorStop;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivActionTyped$c;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvd2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$c;->c()Lcom/yandex/div2/DivActionArrayInsertValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lvd2;->b(Lex7;Lcom/yandex/div2/DivActionArrayInsertValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$c;-><init>(Lcom/yandex/div2/DivActionArrayInsertValue;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$d;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DivActionTyped$d;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyd2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lyd2;->b(Lex7;Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$d;-><init>(Lcom/yandex/div2/DivActionArrayRemoveValue;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$e;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/div2/DivActionTyped$e;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbe2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$e;->c()Lcom/yandex/div2/DivActionArraySetValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lbe2;->b(Lex7;Lcom/yandex/div2/DivActionArraySetValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$e;-><init>(Lcom/yandex/div2/DivActionArraySetValue;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$f;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div2/DivActionTyped$f;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpe2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$f;->c()Lcom/yandex/div2/DivActionClearFocusTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lpe2;->b(Lex7;Lcom/yandex/div2/DivActionClearFocusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionClearFocus;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$f;-><init>(Lcom/yandex/div2/DivActionClearFocus;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$h;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/yandex/div2/DivActionTyped$h;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lse2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$h;->c()Lcom/yandex/div2/DivActionCopyToClipboardTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lse2;->b(Lex7;Lcom/yandex/div2/DivActionCopyToClipboardTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$h;-><init>(Lcom/yandex/div2/DivActionCopyToClipboard;)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$i;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/yandex/div2/DivActionTyped$i;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lve2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$i;->c()Lcom/yandex/div2/DivActionDictSetValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lve2;->b(Lex7;Lcom/yandex/div2/DivActionDictSetValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDictSetValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$i;-><init>(Lcom/yandex/div2/DivActionDictSetValue;)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$j;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/yandex/div2/DivActionTyped$j;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lye2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$j;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$j;->c()Lcom/yandex/div2/DivActionDownloadTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lye2;->b(Lex7;Lcom/yandex/div2/DivActionDownloadTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDownload;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$j;-><init>(Lcom/yandex/div2/DivActionDownload;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$k;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/yandex/div2/DivActionTyped$k;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$k;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$k;->c()Lcom/yandex/div2/DivActionFocusElementTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lbf2;->b(Lex7;Lcom/yandex/div2/DivActionFocusElementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionFocusElement;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$k;-><init>(Lcom/yandex/div2/DivActionFocusElement;)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$l;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/yandex/div2/DivActionTyped$l;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lff2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$l;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$l;->c()Lcom/yandex/div2/DivActionHideTooltipTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lff2;->b(Lex7;Lcom/yandex/div2/DivActionHideTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionHideTooltip;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$l;-><init>(Lcom/yandex/div2/DivActionHideTooltip;)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$m;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/yandex/div2/DivActionTyped$m;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionScrollByJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$m;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$m;->c()Lcom/yandex/div2/DivActionScrollByTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionScrollByJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$m;-><init>(Lcom/yandex/div2/DivActionScrollBy;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$n;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/yandex/div2/DivActionTyped$n;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k$d;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$n;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$n;->c()Lcom/yandex/div2/DivActionScrollToTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/k$d;->b(Lex7;Lcom/yandex/div2/DivActionScrollToTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$n;-><init>(Lcom/yandex/div2/DivActionScrollTo;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$o;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/yandex/div2/DivActionTyped$o;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l$d;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$o;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$o;->c()Lcom/yandex/div2/DivActionSetStateTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/l$d;->b(Lex7;Lcom/yandex/div2/DivActionSetStateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetState;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$o;-><init>(Lcom/yandex/div2/DivActionSetState;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$p;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/yandex/div2/DivActionTyped$p;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lif2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$p;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$p;->c()Lcom/yandex/div2/DivActionSetStoredValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lif2;->b(Lex7;Lcom/yandex/div2/DivActionSetStoredValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$p;-><init>(Lcom/yandex/div2/DivActionSetStoredValue;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$q;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/yandex/div2/DivActionTyped$q;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$q;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$q;->c()Lcom/yandex/div2/DivActionSetVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Llf2;->b(Lex7;Lcom/yandex/div2/DivActionSetVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$q;-><init>(Lcom/yandex/div2/DivActionSetVariable;)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$r;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/yandex/div2/DivActionTyped$r;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lof2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$r;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$r;->c()Lcom/yandex/div2/DivActionShowTooltipTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lof2;->b(Lex7;Lcom/yandex/div2/DivActionShowTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionShowTooltip;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$r;-><init>(Lcom/yandex/div2/DivActionShowTooltip;)V

    goto :goto_0

    :cond_10
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$s;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/yandex/div2/DivActionTyped$s;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->X0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/n;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$s;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$s;->c()Lcom/yandex/div2/DivActionSubmitTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/n;->b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$s;-><init>(Lcom/yandex/div2/DivActionSubmit;)V

    goto :goto_0

    :cond_11
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$t;

    if-eqz v0, :cond_12

    new-instance v0, Lcom/yandex/div2/DivActionTyped$t;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->g1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionTimerJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$t;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$t;->c()Lcom/yandex/div2/DivActionTimerTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionTimerJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionTimerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTimer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$t;-><init>(Lcom/yandex/div2/DivActionTimer;)V

    goto :goto_0

    :cond_12
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$u;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/yandex/div2/DivActionTyped$u;

    iget-object p0, p0, Lcom/yandex/div2/t;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->m1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionVideoJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$u;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$u;->c()Lcom/yandex/div2/DivActionVideoTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionVideoJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionVideoTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionVideo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$u;-><init>(Lcom/yandex/div2/DivActionVideo;)V

    :goto_0
    return-object v0

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
