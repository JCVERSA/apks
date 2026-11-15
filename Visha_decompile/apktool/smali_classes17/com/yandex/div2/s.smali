.class public final Lcom/yandex/div2/s;
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

    iput-object p1, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/s;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTypedTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/s;->e(Lex7;Lcom/yandex/div2/DivActionTypedTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTypedTemplate;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivActionTypedTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivActionTypedTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "array_insert_value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lud2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/DivActionArrayInsertValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lud2;->d(Lex7;Lcom/yandex/div2/DivActionArrayInsertValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayInsertValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$c;-><init>(Lcom/yandex/div2/DivActionArrayInsertValueTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "hide_tooltip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$l;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->s0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef2;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/DivActionHideTooltipTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lef2;->d(Lex7;Lcom/yandex/div2/DivActionHideTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionHideTooltipTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$l;-><init>(Lcom/yandex/div2/DivActionHideTooltipTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "dict_set_value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$i;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lue2;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/DivActionDictSetValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lue2;->d(Lex7;Lcom/yandex/div2/DivActionDictSetValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDictSetValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$i;-><init>(Lcom/yandex/div2/DivActionDictSetValueTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "focus_element"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$k;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laf2;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/DivActionFocusElementTemplate;

    invoke-virtual {p0, p1, v4, p2}, Laf2;->d(Lex7;Lcom/yandex/div2/DivActionFocusElementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionFocusElementTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$k;-><init>(Lcom/yandex/div2/DivActionFocusElementTemplate;)V

    return-object v0

    :sswitch_4
    const-string v3, "download"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$j;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->m0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxe2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_7
    check-cast v4, Lcom/yandex/div2/DivActionDownloadTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lxe2;->d(Lex7;Lcom/yandex/div2/DivActionDownloadTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDownloadTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$j;-><init>(Lcom/yandex/div2/DivActionDownloadTemplate;)V

    return-object v0

    :sswitch_5
    const-string v3, "set_state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$o;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l$c;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_8
    check-cast v4, Lcom/yandex/div2/DivActionSetStateTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/l$c;->d(Lex7;Lcom/yandex/div2/DivActionSetStateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetStateTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$o;-><init>(Lcom/yandex/div2/DivActionSetStateTemplate;)V

    return-object v0

    :sswitch_6
    const-string v3, "scroll_to"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$n;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->H0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k$c;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_9
    check-cast v4, Lcom/yandex/div2/DivActionScrollToTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/k$c;->d(Lex7;Lcom/yandex/div2/DivActionScrollToTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollToTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$n;-><init>(Lcom/yandex/div2/DivActionScrollToTemplate;)V

    return-object v0

    :sswitch_7
    const-string v3, "scroll_by"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$m;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionScrollByJsonParser$c;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_a
    check-cast v4, Lcom/yandex/div2/DivActionScrollByTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollByTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$m;-><init>(Lcom/yandex/div2/DivActionScrollByTemplate;)V

    return-object v0

    :sswitch_8
    const-string v3, "show_tooltip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$r;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnf2;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_b
    check-cast v4, Lcom/yandex/div2/DivActionShowTooltipTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lnf2;->d(Lex7;Lcom/yandex/div2/DivActionShowTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionShowTooltipTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$r;-><init>(Lcom/yandex/div2/DivActionShowTooltipTemplate;)V

    return-object v0

    :sswitch_9
    const-string v3, "array_remove_value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$d;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxd2;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_c
    check-cast v4, Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lxd2;->d(Lex7;Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$d;-><init>(Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;)V

    return-object v0

    :sswitch_a
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$u;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionVideoJsonParser$c;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_d
    check-cast v4, Lcom/yandex/div2/DivActionVideoTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivActionVideoJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionVideoTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionVideoTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$u;-><init>(Lcom/yandex/div2/DivActionVideoTemplate;)V

    return-object v0

    :sswitch_b
    const-string v3, "timer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$t;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionTimerJsonParser$c;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_e
    check-cast v4, Lcom/yandex/div2/DivActionTimerTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivActionTimerJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionTimerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTimerTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$t;-><init>(Lcom/yandex/div2/DivActionTimerTemplate;)V

    return-object v0

    :sswitch_c
    const-string v3, "array_set_value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->X()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lae2;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_f
    check-cast v4, Lcom/yandex/div2/DivActionArraySetValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lae2;->d(Lex7;Lcom/yandex/div2/DivActionArraySetValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArraySetValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$e;-><init>(Lcom/yandex/div2/DivActionArraySetValueTemplate;)V

    return-object v0

    :sswitch_d
    const-string v3, "copy_to_clipboard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$h;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->g0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lre2;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_10
    check-cast v4, Lcom/yandex/div2/DivActionCopyToClipboardTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lre2;->d(Lex7;Lcom/yandex/div2/DivActionCopyToClipboardTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionCopyToClipboardTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$h;-><init>(Lcom/yandex/div2/DivActionCopyToClipboardTemplate;)V

    return-object v0

    :sswitch_e
    const-string v3, "set_stored_value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$p;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhf2;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_11
    check-cast v4, Lcom/yandex/div2/DivActionSetStoredValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lhf2;->d(Lex7;Lcom/yandex/div2/DivActionSetStoredValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetStoredValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$p;-><init>(Lcom/yandex/div2/DivActionSetStoredValueTemplate;)V

    return-object v0

    :sswitch_f
    const-string v3, "submit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$s;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpf2;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_12
    check-cast v4, Lcom/yandex/div2/DivActionSubmitTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lpf2;->d(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmitTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$s;-><init>(Lcom/yandex/div2/DivActionSubmitTemplate;)V

    return-object v0

    :sswitch_10
    const-string v3, "animator_stop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrd2;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_13
    check-cast v4, Lcom/yandex/div2/DivActionAnimatorStopTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lrd2;->d(Lex7;Lcom/yandex/div2/DivActionAnimatorStopTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStopTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$b;-><init>(Lcom/yandex/div2/DivActionAnimatorStopTemplate;)V

    return-object v0

    :sswitch_11
    const-string v3, "clear_focus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$f;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->a0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loe2;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_14
    check-cast v4, Lcom/yandex/div2/DivActionClearFocusTemplate;

    invoke-virtual {p0, p1, v4, p2}, Loe2;->d(Lex7;Lcom/yandex/div2/DivActionClearFocusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionClearFocusTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$f;-><init>(Lcom/yandex/div2/DivActionClearFocusTemplate;)V

    return-object v0

    :sswitch_12
    const-string v3, "animator_start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$a;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_15
    check-cast v4, Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$a;-><init>(Lcom/yandex/div2/DivActionAnimatorStartTemplate;)V

    return-object v0

    :sswitch_13
    const-string v3, "set_variable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$q;

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkf2;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionTypedTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_16
    check-cast v4, Lcom/yandex/div2/DivActionSetVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lkf2;->d(Lex7;Lcom/yandex/div2/DivActionSetVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionTypedTemplate$q;-><init>(Lcom/yandex/div2/DivActionSetVariableTemplate;)V

    return-object v0

    :cond_17
    :goto_2
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

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

.method public e(Lex7;Lcom/yandex/div2/DivActionTypedTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$a;->c()Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrd2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$b;->c()Lcom/yandex/div2/DivActionAnimatorStopTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lrd2;->e(Lex7;Lcom/yandex/div2/DivActionAnimatorStopTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$c;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lud2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$c;->c()Lcom/yandex/div2/DivActionArrayInsertValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lud2;->e(Lex7;Lcom/yandex/div2/DivActionArrayInsertValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$d;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxd2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lxd2;->e(Lex7;Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$e;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->X()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lae2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$e;->c()Lcom/yandex/div2/DivActionArraySetValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lae2;->e(Lex7;Lcom/yandex/div2/DivActionArraySetValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$f;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->a0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loe2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$f;->c()Lcom/yandex/div2/DivActionClearFocusTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Loe2;->e(Lex7;Lcom/yandex/div2/DivActionClearFocusTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$h;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->g0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lre2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$h;->c()Lcom/yandex/div2/DivActionCopyToClipboardTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lre2;->e(Lex7;Lcom/yandex/div2/DivActionCopyToClipboardTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$i;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lue2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$i;->c()Lcom/yandex/div2/DivActionDictSetValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lue2;->e(Lex7;Lcom/yandex/div2/DivActionDictSetValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$j;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->m0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxe2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$j;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$j;->c()Lcom/yandex/div2/DivActionDownloadTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lxe2;->e(Lex7;Lcom/yandex/div2/DivActionDownloadTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$k;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$k;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$k;->c()Lcom/yandex/div2/DivActionFocusElementTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Laf2;->e(Lex7;Lcom/yandex/div2/DivActionFocusElementTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$l;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->s0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$l;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$l;->c()Lcom/yandex/div2/DivActionHideTooltipTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lef2;->e(Lex7;Lcom/yandex/div2/DivActionHideTooltipTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$m;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionScrollByJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$m;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$m;->c()Lcom/yandex/div2/DivActionScrollByTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$n;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->H0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k$c;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$n;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$n;->c()Lcom/yandex/div2/DivActionScrollToTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k$c;->e(Lex7;Lcom/yandex/div2/DivActionScrollToTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$o;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l$c;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$o;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$o;->c()Lcom/yandex/div2/DivActionSetStateTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l$c;->e(Lex7;Lcom/yandex/div2/DivActionSetStateTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$p;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$p;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$p;->c()Lcom/yandex/div2/DivActionSetStoredValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lhf2;->e(Lex7;Lcom/yandex/div2/DivActionSetStoredValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_e
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$q;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$q;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$q;->c()Lcom/yandex/div2/DivActionSetVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkf2;->e(Lex7;Lcom/yandex/div2/DivActionSetVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$r;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$r;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$r;->c()Lcom/yandex/div2/DivActionShowTooltipTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnf2;->e(Lex7;Lcom/yandex/div2/DivActionShowTooltipTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_10
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$s;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpf2;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$s;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$s;->c()Lcom/yandex/div2/DivActionSubmitTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lpf2;->e(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_11
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$t;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionTimerJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$t;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$t;->c()Lcom/yandex/div2/DivActionTimerTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionTimerJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionTimerTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_12
    instance-of v0, p2, Lcom/yandex/div2/DivActionTypedTemplate$u;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/yandex/div2/s;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivActionVideoJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivActionTypedTemplate$u;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTypedTemplate$u;->c()Lcom/yandex/div2/DivActionVideoTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionVideoJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionVideoTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
