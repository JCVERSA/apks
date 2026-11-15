.class public abstract Lcom/yandex/div2/DivActionTypedTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionTypedTemplate$a;,
        Lcom/yandex/div2/DivActionTypedTemplate$b;,
        Lcom/yandex/div2/DivActionTypedTemplate$c;,
        Lcom/yandex/div2/DivActionTypedTemplate$d;,
        Lcom/yandex/div2/DivActionTypedTemplate$e;,
        Lcom/yandex/div2/DivActionTypedTemplate$f;,
        Lcom/yandex/div2/DivActionTypedTemplate$g;,
        Lcom/yandex/div2/DivActionTypedTemplate$h;,
        Lcom/yandex/div2/DivActionTypedTemplate$i;,
        Lcom/yandex/div2/DivActionTypedTemplate$j;,
        Lcom/yandex/div2/DivActionTypedTemplate$k;,
        Lcom/yandex/div2/DivActionTypedTemplate$l;,
        Lcom/yandex/div2/DivActionTypedTemplate$m;,
        Lcom/yandex/div2/DivActionTypedTemplate$n;,
        Lcom/yandex/div2/DivActionTypedTemplate$o;,
        Lcom/yandex/div2/DivActionTypedTemplate$p;,
        Lcom/yandex/div2/DivActionTypedTemplate$q;,
        Lcom/yandex/div2/DivActionTypedTemplate$r;,
        Lcom/yandex/div2/DivActionTypedTemplate$s;,
        Lcom/yandex/div2/DivActionTypedTemplate$t;,
        Lcom/yandex/div2/DivActionTypedTemplate$u;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivActionTypedTemplate$g;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivActionTypedTemplate$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionTypedTemplate$g;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionTypedTemplate;->a:Lcom/yandex/div2/DivActionTypedTemplate$g;

    sget-object v0, Lcom/yandex/div2/DivActionTypedTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionTypedTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivActionTypedTemplate;->b:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivActionTypedTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$a;

    if-eqz v0, :cond_0

    const-string p0, "animator_start"

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$b;

    if-eqz v0, :cond_1

    const-string p0, "animator_stop"

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$c;

    if-eqz v0, :cond_2

    const-string p0, "array_insert_value"

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$d;

    if-eqz v0, :cond_3

    const-string p0, "array_remove_value"

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$e;

    if-eqz v0, :cond_4

    const-string p0, "array_set_value"

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$f;

    if-eqz v0, :cond_5

    const-string p0, "clear_focus"

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$h;

    if-eqz v0, :cond_6

    const-string p0, "copy_to_clipboard"

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$i;

    if-eqz v0, :cond_7

    const-string p0, "dict_set_value"

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$j;

    if-eqz v0, :cond_8

    const-string p0, "download"

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$k;

    if-eqz v0, :cond_9

    const-string p0, "focus_element"

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$l;

    if-eqz v0, :cond_a

    const-string p0, "hide_tooltip"

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$m;

    if-eqz v0, :cond_b

    const-string p0, "scroll_by"

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$n;

    if-eqz v0, :cond_c

    const-string p0, "scroll_to"

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$o;

    if-eqz v0, :cond_d

    const-string p0, "set_state"

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$p;

    if-eqz v0, :cond_e

    const-string p0, "set_stored_value"

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$q;

    if-eqz v0, :cond_f

    const-string p0, "set_variable"

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$r;

    if-eqz v0, :cond_10

    const-string p0, "show_tooltip"

    goto :goto_0

    :cond_10
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$s;

    if-eqz v0, :cond_11

    const-string p0, "submit"

    goto :goto_0

    :cond_11
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$t;

    if-eqz v0, :cond_12

    const-string p0, "timer"

    goto :goto_0

    :cond_12
    instance-of p0, p0, Lcom/yandex/div2/DivActionTypedTemplate$u;

    if-eqz p0, :cond_13

    const-string p0, "video"

    :goto_0
    return-object p0

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$a;->c()Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$b;->c()Lcom/yandex/div2/DivActionAnimatorStopTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$c;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$c;->c()Lcom/yandex/div2/DivActionArrayInsertValueTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$d;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$e;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$e;->c()Lcom/yandex/div2/DivActionArraySetValueTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$f;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$f;->c()Lcom/yandex/div2/DivActionClearFocusTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$h;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$h;->c()Lcom/yandex/div2/DivActionCopyToClipboardTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$i;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$i;->c()Lcom/yandex/div2/DivActionDictSetValueTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$j;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$j;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$j;->c()Lcom/yandex/div2/DivActionDownloadTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$k;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$k;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$k;->c()Lcom/yandex/div2/DivActionFocusElementTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$l;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$l;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$l;->c()Lcom/yandex/div2/DivActionHideTooltipTemplate;

    move-result-object p0

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$m;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$m;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$m;->c()Lcom/yandex/div2/DivActionScrollByTemplate;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$n;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$n;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$n;->c()Lcom/yandex/div2/DivActionScrollToTemplate;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$o;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$o;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$o;->c()Lcom/yandex/div2/DivActionSetStateTemplate;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$p;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$p;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$p;->c()Lcom/yandex/div2/DivActionSetStoredValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$q;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$q;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$q;->c()Lcom/yandex/div2/DivActionSetVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$r;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$r;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$r;->c()Lcom/yandex/div2/DivActionShowTooltipTemplate;

    move-result-object p0

    goto :goto_0

    :cond_10
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$s;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$s;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$s;->c()Lcom/yandex/div2/DivActionSubmitTemplate;

    move-result-object p0

    goto :goto_0

    :cond_11
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$t;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$t;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$t;->c()Lcom/yandex/div2/DivActionTimerTemplate;

    move-result-object p0

    goto :goto_0

    :cond_12
    instance-of v0, p0, Lcom/yandex/div2/DivActionTypedTemplate$u;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/yandex/div2/DivActionTypedTemplate$u;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTypedTemplate$u;->c()Lcom/yandex/div2/DivActionVideoTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->i1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/s;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/s;->e(Lex7;Lcom/yandex/div2/DivActionTypedTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
