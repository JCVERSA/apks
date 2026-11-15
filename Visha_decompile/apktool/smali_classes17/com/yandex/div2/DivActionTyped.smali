.class public abstract Lcom/yandex/div2/DivActionTyped;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionTyped$a;,
        Lcom/yandex/div2/DivActionTyped$b;,
        Lcom/yandex/div2/DivActionTyped$c;,
        Lcom/yandex/div2/DivActionTyped$d;,
        Lcom/yandex/div2/DivActionTyped$e;,
        Lcom/yandex/div2/DivActionTyped$f;,
        Lcom/yandex/div2/DivActionTyped$g;,
        Lcom/yandex/div2/DivActionTyped$h;,
        Lcom/yandex/div2/DivActionTyped$i;,
        Lcom/yandex/div2/DivActionTyped$j;,
        Lcom/yandex/div2/DivActionTyped$k;,
        Lcom/yandex/div2/DivActionTyped$l;,
        Lcom/yandex/div2/DivActionTyped$m;,
        Lcom/yandex/div2/DivActionTyped$n;,
        Lcom/yandex/div2/DivActionTyped$o;,
        Lcom/yandex/div2/DivActionTyped$p;,
        Lcom/yandex/div2/DivActionTyped$q;,
        Lcom/yandex/div2/DivActionTyped$r;,
        Lcom/yandex/div2/DivActionTyped$s;,
        Lcom/yandex/div2/DivActionTyped$t;,
        Lcom/yandex/div2/DivActionTyped$u;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div2/DivActionTyped$g;

.field public static final c:Ls74;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivActionTyped$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionTyped$g;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionTyped;->b:Lcom/yandex/div2/DivActionTyped$g;

    sget-object v0, Lcom/yandex/div2/DivActionTyped$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionTyped$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivActionTyped;->c:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivActionTyped;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivActionTyped;Loj3;Loj3;)Z
    .locals 2

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivActionTyped$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$a;->c()Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionAnimatorStart;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionAnimatorStart;

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionAnimatorStart;->a(Lcom/yandex/div2/DivActionAnimatorStart;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$b;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivActionTyped$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$b;->c()Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionAnimatorStop;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionAnimatorStop;

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionAnimatorStop;->a(Lcom/yandex/div2/DivActionAnimatorStop;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$c;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivActionTyped$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$c;->c()Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionArrayInsertValue;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionArrayInsertValue;

    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionArrayInsertValue;->a(Lcom/yandex/div2/DivActionArrayInsertValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$d;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/yandex/div2/DivActionTyped$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionArrayRemoveValue;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionArrayRemoveValue;

    :cond_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionArrayRemoveValue;->a(Lcom/yandex/div2/DivActionArrayRemoveValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$e;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/yandex/div2/DivActionTyped$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$e;->c()Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionArraySetValue;

    if-eqz v0, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionArraySetValue;

    :cond_9
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionArraySetValue;->a(Lcom/yandex/div2/DivActionArraySetValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$f;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/yandex/div2/DivActionTyped$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$f;->c()Lcom/yandex/div2/DivActionClearFocus;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionClearFocus;

    if-eqz v0, :cond_b

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionClearFocus;

    :cond_b
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionClearFocus;->a(Lcom/yandex/div2/DivActionClearFocus;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$h;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/yandex/div2/DivActionTyped$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$h;->c()Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionCopyToClipboard;

    if-eqz v0, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionCopyToClipboard;

    :cond_d
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionCopyToClipboard;->a(Lcom/yandex/div2/DivActionCopyToClipboard;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$i;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/yandex/div2/DivActionTyped$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$i;->c()Lcom/yandex/div2/DivActionDictSetValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionDictSetValue;

    if-eqz v0, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionDictSetValue;

    :cond_f
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionDictSetValue;->a(Lcom/yandex/div2/DivActionDictSetValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_10
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$j;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/yandex/div2/DivActionTyped$j;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$j;->c()Lcom/yandex/div2/DivActionDownload;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionDownload;

    if-eqz v0, :cond_11

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionDownload;

    :cond_11
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionDownload;->a(Lcom/yandex/div2/DivActionDownload;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_12
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$k;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/yandex/div2/DivActionTyped$k;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$k;->c()Lcom/yandex/div2/DivActionFocusElement;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionFocusElement;

    if-eqz v0, :cond_13

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionFocusElement;

    :cond_13
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionFocusElement;->a(Lcom/yandex/div2/DivActionFocusElement;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_14
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$l;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/yandex/div2/DivActionTyped$l;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$l;->c()Lcom/yandex/div2/DivActionHideTooltip;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionHideTooltip;

    if-eqz v0, :cond_15

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionHideTooltip;

    :cond_15
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionHideTooltip;->a(Lcom/yandex/div2/DivActionHideTooltip;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_16
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$m;

    if-eqz v0, :cond_18

    check-cast p0, Lcom/yandex/div2/DivActionTyped$m;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$m;->c()Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionScrollBy;

    if-eqz v0, :cond_17

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionScrollBy;

    :cond_17
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionScrollBy;->a(Lcom/yandex/div2/DivActionScrollBy;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_18
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$n;

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/yandex/div2/DivActionTyped$n;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$n;->c()Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionScrollTo;

    if-eqz v0, :cond_19

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionScrollTo;

    :cond_19
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionScrollTo;->a(Lcom/yandex/div2/DivActionScrollTo;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_1a
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$o;

    if-eqz v0, :cond_1c

    check-cast p0, Lcom/yandex/div2/DivActionTyped$o;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$o;->c()Lcom/yandex/div2/DivActionSetState;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionSetState;

    if-eqz v0, :cond_1b

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionSetState;

    :cond_1b
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionSetState;->a(Lcom/yandex/div2/DivActionSetState;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_1c
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$p;

    if-eqz v0, :cond_1e

    check-cast p0, Lcom/yandex/div2/DivActionTyped$p;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$p;->c()Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionSetStoredValue;

    if-eqz v0, :cond_1d

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionSetStoredValue;

    :cond_1d
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionSetStoredValue;->a(Lcom/yandex/div2/DivActionSetStoredValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_1e
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$q;

    if-eqz v0, :cond_20

    check-cast p0, Lcom/yandex/div2/DivActionTyped$q;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$q;->c()Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionSetVariable;

    if-eqz v0, :cond_1f

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionSetVariable;

    :cond_1f
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionSetVariable;->a(Lcom/yandex/div2/DivActionSetVariable;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_20
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$r;

    if-eqz v0, :cond_22

    check-cast p0, Lcom/yandex/div2/DivActionTyped$r;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$r;->c()Lcom/yandex/div2/DivActionShowTooltip;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionShowTooltip;

    if-eqz v0, :cond_21

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionShowTooltip;

    :cond_21
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionShowTooltip;->a(Lcom/yandex/div2/DivActionShowTooltip;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_22
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$s;

    if-eqz v0, :cond_24

    check-cast p0, Lcom/yandex/div2/DivActionTyped$s;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$s;->c()Lcom/yandex/div2/DivActionSubmit;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionSubmit;

    if-eqz v0, :cond_23

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionSubmit;

    :cond_23
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionSubmit;->a(Lcom/yandex/div2/DivActionSubmit;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_24
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$t;

    if-eqz v0, :cond_26

    check-cast p0, Lcom/yandex/div2/DivActionTyped$t;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$t;->c()Lcom/yandex/div2/DivActionTimer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionTimer;

    if-eqz v0, :cond_25

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionTimer;

    :cond_25
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionTimer;->a(Lcom/yandex/div2/DivActionTimer;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_26
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$u;

    if-eqz v0, :cond_28

    check-cast p0, Lcom/yandex/div2/DivActionTyped$u;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$u;->c()Lcom/yandex/div2/DivActionVideo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivActionVideo;

    if-eqz v0, :cond_27

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivActionVideo;

    :cond_27
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivActionVideo;->a(Lcom/yandex/div2/DivActionVideo;Loj3;Loj3;)Z

    move-result p0

    :goto_0
    return p0

    :cond_28
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivActionTyped$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$a;->c()Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivActionTyped$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$b;->c()Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$c;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivActionTyped$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$c;->c()Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$d;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivActionTyped$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$e;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivActionTyped$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$e;->c()Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$f;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivActionTyped$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$f;->c()Lcom/yandex/div2/DivActionClearFocus;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$h;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivActionTyped$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$h;->c()Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$i;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivActionTyped$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$i;->c()Lcom/yandex/div2/DivActionDictSetValue;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$j;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/yandex/div2/DivActionTyped$j;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$j;->c()Lcom/yandex/div2/DivActionDownload;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$k;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/yandex/div2/DivActionTyped$k;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$k;->c()Lcom/yandex/div2/DivActionFocusElement;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$l;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/yandex/div2/DivActionTyped$l;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$l;->c()Lcom/yandex/div2/DivActionHideTooltip;

    move-result-object p0

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$m;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/yandex/div2/DivActionTyped$m;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$m;->c()Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$n;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/yandex/div2/DivActionTyped$n;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$n;->c()Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$o;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/yandex/div2/DivActionTyped$o;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$o;->c()Lcom/yandex/div2/DivActionSetState;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$p;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/yandex/div2/DivActionTyped$p;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$p;->c()Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$q;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/yandex/div2/DivActionTyped$q;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$q;->c()Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$r;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/yandex/div2/DivActionTyped$r;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$r;->c()Lcom/yandex/div2/DivActionShowTooltip;

    move-result-object p0

    goto :goto_0

    :cond_10
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$s;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/yandex/div2/DivActionTyped$s;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$s;->c()Lcom/yandex/div2/DivActionSubmit;

    move-result-object p0

    goto :goto_0

    :cond_11
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$t;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/yandex/div2/DivActionTyped$t;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$t;->c()Lcom/yandex/div2/DivActionTimer;

    move-result-object p0

    goto :goto_0

    :cond_12
    instance-of v0, p0, Lcom/yandex/div2/DivActionTyped$u;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/yandex/div2/DivActionTyped$u;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionTyped$u;->c()Lcom/yandex/div2/DivActionVideo;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivActionTyped;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$a;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$a;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$a;->c()Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionAnimatorStart;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_1
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$b;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$b;->c()Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionAnimatorStop;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_2
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$c;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$c;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$c;->c()Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionArrayInsertValue;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_3
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$d;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$d;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionArrayRemoveValue;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_4
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$e;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$e;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$e;->c()Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionArraySetValue;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_5
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$f;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$f;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$f;->c()Lcom/yandex/div2/DivActionClearFocus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionClearFocus;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_6
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$h;

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$h;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$h;->c()Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionCopyToClipboard;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_7
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$i;

    if-eqz v1, :cond_8

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$i;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$i;->c()Lcom/yandex/div2/DivActionDictSetValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionDictSetValue;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_8
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$j;

    if-eqz v1, :cond_9

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$j;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$j;->c()Lcom/yandex/div2/DivActionDownload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionDownload;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_9
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$k;

    if-eqz v1, :cond_a

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$k;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$k;->c()Lcom/yandex/div2/DivActionFocusElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionFocusElement;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_a
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$l;

    if-eqz v1, :cond_b

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$l;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$l;->c()Lcom/yandex/div2/DivActionHideTooltip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionHideTooltip;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_b
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$m;

    if-eqz v1, :cond_c

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$m;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$m;->c()Lcom/yandex/div2/DivActionScrollBy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionScrollBy;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_c
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$n;

    if-eqz v1, :cond_d

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$n;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$n;->c()Lcom/yandex/div2/DivActionScrollTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionScrollTo;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_d
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$o;

    if-eqz v1, :cond_e

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$o;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$o;->c()Lcom/yandex/div2/DivActionSetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionSetState;->hash()I

    move-result v1

    goto :goto_0

    :cond_e
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$p;

    if-eqz v1, :cond_f

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$p;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$p;->c()Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionSetStoredValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_f
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$q;

    if-eqz v1, :cond_10

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$q;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$q;->c()Lcom/yandex/div2/DivActionSetVariable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionSetVariable;->hash()I

    move-result v1

    goto :goto_0

    :cond_10
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$r;

    if-eqz v1, :cond_11

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$r;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$r;->c()Lcom/yandex/div2/DivActionShowTooltip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionShowTooltip;->hash()I

    move-result v1

    goto :goto_0

    :cond_11
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$s;

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$s;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$s;->c()Lcom/yandex/div2/DivActionSubmit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionSubmit;->hash()I

    move-result v1

    goto :goto_0

    :cond_12
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$t;

    if-eqz v1, :cond_13

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$t;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$t;->c()Lcom/yandex/div2/DivActionTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTimer;->hash()I

    move-result v1

    goto :goto_0

    :cond_13
    instance-of v1, p0, Lcom/yandex/div2/DivActionTyped$u;

    if-eqz v1, :cond_14

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivActionTyped$u;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped$u;->c()Lcom/yandex/div2/DivActionVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionVideo;->hash()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivActionTyped;->a:Ljava/lang/Integer;

    return v0

    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/r;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/r;->e(Lex7;Lcom/yandex/div2/DivActionTyped;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
