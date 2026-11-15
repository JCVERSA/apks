.class public final Lcom/yandex/div2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/r;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTyped;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionTyped;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/r;->e(Lex7;Lcom/yandex/div2/DivActionTyped;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTyped;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "array_insert_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div2/DivActionTyped$c;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltd2;

    invoke-virtual {p0, p1, p2}, Ltd2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$c;-><init>(Lcom/yandex/div2/DivActionArrayInsertValue;)V

    return-object v0

    :sswitch_1
    const-string v2, "hide_tooltip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivActionTyped$l;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->r0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf2;

    invoke-virtual {p0, p1, p2}, Ldf2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionHideTooltip;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$l;-><init>(Lcom/yandex/div2/DivActionHideTooltip;)V

    return-object v0

    :sswitch_2
    const-string v2, "dict_set_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/yandex/div2/DivActionTyped$i;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lte2;

    invoke-virtual {p0, p1, p2}, Lte2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDictSetValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$i;-><init>(Lcom/yandex/div2/DivActionDictSetValue;)V

    return-object v0

    :sswitch_3
    const-string v2, "focus_element"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/yandex/div2/DivActionTyped$k;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lze2;

    invoke-virtual {p0, p1, p2}, Lze2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionFocusElement;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$k;-><init>(Lcom/yandex/div2/DivActionFocusElement;)V

    return-object v0

    :sswitch_4
    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/yandex/div2/DivActionTyped$j;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwe2;

    invoke-virtual {p0, p1, p2}, Lwe2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDownload;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$j;-><init>(Lcom/yandex/div2/DivActionDownload;)V

    return-object v0

    :sswitch_5
    const-string v2, "set_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/yandex/div2/DivActionTyped$o;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetState;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$o;-><init>(Lcom/yandex/div2/DivActionSetState;)V

    return-object v0

    :sswitch_6
    const-string v2, "scroll_to"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/yandex/div2/DivActionTyped$n;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->G0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$n;-><init>(Lcom/yandex/div2/DivActionScrollTo;)V

    return-object v0

    :sswitch_7
    const-string v2, "scroll_by"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/yandex/div2/DivActionTyped$m;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionScrollByJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$m;-><init>(Lcom/yandex/div2/DivActionScrollBy;)V

    return-object v0

    :sswitch_8
    const-string v2, "show_tooltip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/yandex/div2/DivActionTyped$r;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf2;

    invoke-virtual {p0, p1, p2}, Lmf2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionShowTooltip;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$r;-><init>(Lcom/yandex/div2/DivActionShowTooltip;)V

    return-object v0

    :sswitch_9
    const-string v2, "array_remove_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/yandex/div2/DivActionTyped$d;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwd2;

    invoke-virtual {p0, p1, p2}, Lwd2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$d;-><init>(Lcom/yandex/div2/DivActionArrayRemoveValue;)V

    return-object v0

    :sswitch_a
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/yandex/div2/DivActionTyped$u;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionVideoJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionVideoJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionVideo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$u;-><init>(Lcom/yandex/div2/DivActionVideo;)V

    return-object v0

    :sswitch_b
    const-string v2, "timer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/yandex/div2/DivActionTyped$t;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionTimerJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionTimerJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTimer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$t;-><init>(Lcom/yandex/div2/DivActionTimer;)V

    return-object v0

    :sswitch_c
    const-string v2, "array_set_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/yandex/div2/DivActionTyped$e;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzd2;

    invoke-virtual {p0, p1, p2}, Lzd2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$e;-><init>(Lcom/yandex/div2/DivActionArraySetValue;)V

    return-object v0

    :sswitch_d
    const-string v2, "copy_to_clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/yandex/div2/DivActionTyped$h;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqe2;

    invoke-virtual {p0, p1, p2}, Lqe2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$h;-><init>(Lcom/yandex/div2/DivActionCopyToClipboard;)V

    return-object v0

    :sswitch_e
    const-string v2, "set_stored_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lcom/yandex/div2/DivActionTyped$p;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgf2;

    invoke-virtual {p0, p1, p2}, Lgf2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$p;-><init>(Lcom/yandex/div2/DivActionSetStoredValue;)V

    return-object v0

    :sswitch_f
    const-string v2, "submit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance v0, Lcom/yandex/div2/DivActionTyped$s;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/m;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$s;-><init>(Lcom/yandex/div2/DivActionSubmit;)V

    return-object v0

    :sswitch_10
    const-string v2, "animator_stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    new-instance v0, Lcom/yandex/div2/DivActionTyped$b;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd2;

    invoke-virtual {p0, p1, p2}, Lqd2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$b;-><init>(Lcom/yandex/div2/DivActionAnimatorStop;)V

    return-object v0

    :sswitch_11
    const-string v2, "clear_focus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    new-instance v0, Lcom/yandex/div2/DivActionTyped$f;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Z()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lne2;

    invoke-virtual {p0, p1, p2}, Lne2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionClearFocus;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$f;-><init>(Lcom/yandex/div2/DivActionClearFocus;)V

    return-object v0

    :sswitch_12
    const-string v2, "animator_start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_0

    :cond_12
    new-instance v0, Lcom/yandex/div2/DivActionTyped$a;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$a;-><init>(Lcom/yandex/div2/DivActionAnimatorStart;)V

    return-object v0

    :sswitch_13
    const-string v2, "set_variable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivActionTypedTemplate;

    if-eqz v3, :cond_13

    check-cast v2, Lcom/yandex/div2/DivActionTypedTemplate;

    goto :goto_1

    :cond_13
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_14

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/t;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/t;->b(Lex7;Lcom/yandex/div2/DivActionTypedTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTyped;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_15
    new-instance v0, Lcom/yandex/div2/DivActionTyped$q;

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf2;

    invoke-virtual {p0, p1, p2}, Ljf2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTyped$q;-><init>(Lcom/yandex/div2/DivActionSetVariable;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60c6ea47 -> :sswitch_13
        -0x60c6b6f6 -> :sswitch_12
        -0x4acd3f9a -> :sswitch_11
        -0x452fb1a6 -> :sswitch_10
        -0x3523bfe8 -> :sswitch_f
        -0x2f7b116e -> :sswitch_e
        -0x181876a4 -> :sswitch_d
        0x9970ee -> :sswitch_c
        0x6940745 -> :sswitch_b
        0x6b0147b -> :sswitch_a
        0xc27ca1c -> :sswitch_9
        0x11f904c1 -> :sswitch_8
        0x18e6fb09 -> :sswitch_7
        0x18e6fd2d -> :sswitch_6
        0x378e9274 -> :sswitch_5
        0x551ac888 -> :sswitch_4
        0x5c6dc295 -> :sswitch_3
        0x5ea5ba0b -> :sswitch_2
        0x6643f206 -> :sswitch_1
        0x6bf85891 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionTyped;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$a;->c()Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionAnimatorStart;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$b;->c()Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lqd2;->e(Lex7;Lcom/yandex/div2/DivActionAnimatorStop;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$c;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltd2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$c;->c()Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltd2;->e(Lex7;Lcom/yandex/div2/DivActionArrayInsertValue;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$d;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwd2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lwd2;->e(Lex7;Lcom/yandex/div2/DivActionArrayRemoveValue;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$e;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzd2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$e;->c()Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lzd2;->e(Lex7;Lcom/yandex/div2/DivActionArraySetValue;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$f;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Z()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lne2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$f;->c()Lcom/yandex/div2/DivActionClearFocus;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lne2;->e(Lex7;Lcom/yandex/div2/DivActionClearFocus;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$h;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqe2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$h;->c()Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lqe2;->e(Lex7;Lcom/yandex/div2/DivActionCopyToClipboard;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$i;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lte2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$i;->c()Lcom/yandex/div2/DivActionDictSetValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lte2;->e(Lex7;Lcom/yandex/div2/DivActionDictSetValue;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$j;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwe2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$j;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$j;->c()Lcom/yandex/div2/DivActionDownload;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lwe2;->e(Lex7;Lcom/yandex/div2/DivActionDownload;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$k;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lze2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$k;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$k;->c()Lcom/yandex/div2/DivActionFocusElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lze2;->e(Lex7;Lcom/yandex/div2/DivActionFocusElement;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$l;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->r0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$l;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$l;->c()Lcom/yandex/div2/DivActionHideTooltip;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ldf2;->e(Lex7;Lcom/yandex/div2/DivActionHideTooltip;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$m;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionScrollByJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$m;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$m;->c()Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionScrollBy;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$n;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->G0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k$b;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$n;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$n;->c()Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k$b;->e(Lex7;Lcom/yandex/div2/DivActionScrollTo;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$o;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l$b;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$o;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$o;->c()Lcom/yandex/div2/DivActionSetState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l$b;->e(Lex7;Lcom/yandex/div2/DivActionSetState;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$p;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgf2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$p;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$p;->c()Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgf2;->e(Lex7;Lcom/yandex/div2/DivActionSetStoredValue;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_e
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$q;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$q;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$q;->c()Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljf2;->e(Lex7;Lcom/yandex/div2/DivActionSetVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$r;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$r;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$r;->c()Lcom/yandex/div2/DivActionShowTooltip;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf2;->e(Lex7;Lcom/yandex/div2/DivActionShowTooltip;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_10
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$s;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/m;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$s;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$s;->c()Lcom/yandex/div2/DivActionSubmit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m;->e(Lex7;Lcom/yandex/div2/DivActionSubmit;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_11
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$t;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionTimerJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$t;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$t;->c()Lcom/yandex/div2/DivActionTimer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionTimerJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionTimer;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_12
    instance-of v0, p2, Lcom/yandex/div2/DivActionTyped$u;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/yandex/div2/r;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionVideoJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$u;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$u;->c()Lcom/yandex/div2/DivActionVideo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionVideoJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionVideo;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
