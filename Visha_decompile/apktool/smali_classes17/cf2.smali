.class public Lcf2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTHORITY_HIDE_TOOLTIP:Ljava/lang/String; = "hide_tooltip"

.field private static final AUTHORITY_SET_VARIABLE:Ljava/lang/String; = "set_variable"

.field private static final AUTHORITY_SHOW_TOOLTIP:Ljava/lang/String; = "show_tooltip"

.field private static final AUTHORITY_SWITCH_STATE:Ljava/lang/String; = "set_state"

.field private static final AUTHORITY_TIMER:Ljava/lang/String; = "timer"

.field private static final AUTHORITY_VIDEO:Ljava/lang/String; = "video"

.field private static final PARAM_ACTION:Ljava/lang/String; = "action"

.field private static final PARAM_ID:Ljava/lang/String; = "id"

.field private static final PARAM_MULTIPLE:Ljava/lang/String; = "multiple"

.field private static final PARAM_STATE_ID:Ljava/lang/String; = "state_id"

.field private static final PARAM_TEMPORARY:Ljava/lang/String; = "temporary"

.field private static final PARAM_VARIABLE_NAME:Ljava/lang/String; = "name"

.field private static final PARAM_VARIABLE_VALUE:Ljava/lang/String; = "value"

.field private static final SCHEME_DIV_ACTION:Ljava/lang/String; = "div-action"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Loj3;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Locc;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lmk2;

    if-eqz p1, :cond_1

    check-cast p0, Lmk2;

    invoke-interface {p0}, Lmk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "div-action"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcf2;->c(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final c(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string p1, "set_state"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p0, "state_id"

    invoke-virtual {p2, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "state_id param is required"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "temporary"

    invoke-virtual {p2, p1, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    :try_start_0
    invoke-static {p0}, Lcom/yandex/div/core/state/DivStatePath;->o(Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lsv2;->switchToState(Lcom/yandex/div/core/state/DivStatePath;Z)V
    :try_end_0
    .catch Lcom/yandex/div/core/state/PathFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid format of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lxi;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_1
    const-string p1, "show_tooltip"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "id param is required"

    const-string v3, "id"

    if-eqz p1, :cond_3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p1, "multiple"

    invoke-virtual {p2, p1, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    invoke-interface {p3, p0, p1}, Lsv2;->showTooltip(Ljava/lang/String;Z)V

    return v0

    :cond_3
    const-string p1, "hide_tooltip"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-interface {p3, p0}, Lsv2;->hideTooltip(Ljava/lang/String;)V

    return v0

    :cond_5
    const-string p1, "set_variable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    const-string p0, "name"

    invoke-virtual {p2, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "name param is required"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_6
    const-string p1, "value"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "value param unspecified for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_7
    instance-of p2, p3, Lcom/yandex/div/core/view2/Div2View;

    if-eqz p2, :cond_8

    move-object v4, p3

    check-cast v4, Lcom/yandex/div/core/view2/Div2View;

    :cond_8
    const-string p2, "Variable \'"

    if-nez v4, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' mutation failed! View("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") not supports variables!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_9
    :try_start_1
    invoke-static {v4, p0, p1, p4}, Lbob;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/VariableMutationException;
    :try_end_1
    .catch Lcom/yandex/div/data/VariableMutationException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' mutation failed: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lxi;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_a
    const-string p1, "timer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v5, "action"

    if-eqz p1, :cond_f

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_b
    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p0, "action param is required"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_c
    instance-of p2, p3, Lcom/yandex/div/core/view2/Div2View;

    if-eqz p2, :cond_d

    move-object v4, p3

    check-cast v4, Lcom/yandex/div/core/view2/Div2View;

    :cond_d
    if-nez v4, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Timer \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' state changing failed! View("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") not supports timers!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_e
    invoke-virtual {v4, p0, p1}, Lcom/yandex/div/core/view2/Div2View;->applyTimerCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_f
    const-string p1, "video"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    instance-of p0, p3, Lcom/yandex/div/core/view2/Div2View;

    if-eqz p0, :cond_10

    move-object v4, p3

    check-cast v4, Lcom/yandex/div/core/view2/Div2View;

    :cond_10
    if-nez v4, :cond_11

    const-string p0, "Handler view is not instance of Div2View"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "Video action has no id param"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_12
    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p0, "Video action has no action param"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v1

    :cond_13
    invoke-virtual {v4, p0, p1, p4}, Lcom/yandex/div/core/view2/Div2View;->applyVideoCommand(Ljava/lang/String;Ljava/lang/String;Loj3;)Z

    move-result p0

    return p0

    :cond_14
    invoke-static {p0}, Lcom/yandex/div/core/view2/items/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {p2, p3, p4}, Lcom/yandex/div/core/view2/items/a;->e(Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0

    :cond_15
    invoke-static {p0}, Ley9;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p2, p3}, Ley9;->e(Landroid/net/Uri;Lsv2;)Z

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public getUseActionUid()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z
    .locals 3

    .line 1
    move-object v0, p2

    check-cast v0, Lcom/yandex/div/core/view2/Div2View;

    iget-object v1, p1, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcf2;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Loj3;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p3

    .line 2
    :cond_0
    invoke-static {p1, p2, v1}, Lwf2;->a(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    iget-object v2, p1, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-static {p3, p2}, Lji2;->a(Landroid/net/Uri;Lsv2;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-static {p1, v0, v1}, Lji2;->d(Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0

    .line 6
    :cond_3
    iget-object p1, p1, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2, v1}, Lcf2;->b(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lcom/yandex/div2/DivDisappearAction;Lsv2;Loj3;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivDisappearAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lcom/yandex/div2/DivDisappearAction;Lsv2;Loj3;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivDisappearAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivDisappearAction;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lcom/yandex/div2/DivVisibilityAction;Lsv2;Loj3;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivVisibilityAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lcom/yandex/div2/DivVisibilityAction;Lsv2;Loj3;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivVisibilityAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivVisibilityAction;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lwp2;Lsv2;Loj3;)Z
    .locals 4
    .param p1    # Lwp2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 10
    move-object v0, p2

    check-cast v0, Lcom/yandex/div/core/view2/Div2View;

    invoke-interface {p1}, Lwp2;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcf2;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Loj3;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p3

    .line 11
    :cond_0
    invoke-static {p1, p2, v1}, Lwf2;->c(Lwp2;Lsv2;Loj3;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 12
    :cond_1
    invoke-interface {p1}, Lwp2;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lwp2;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-static {v2, p2}, Lji2;->a(Landroid/net/Uri;Lsv2;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {p1, v0, v1}, Lji2;->f(Lwp2;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0

    .line 15
    :cond_3
    invoke-interface {p1}, Lwp2;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, p2, p3}, Lcf2;->b(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleAction(Lwp2;Lsv2;Loj3;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lwp2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleActionUrl(Landroid/net/Uri;Lsv2;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2}, Lsv2;->getExpressionResolver()Loj3;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcf2;->handleActionUrl(Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public final handleActionUrl(Landroid/net/Uri;Lsv2;Loj3;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcf2;->handleActionUrl(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public final handleActionUrl(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    move-object v0, p3

    check-cast v0, Lcom/yandex/div/core/view2/Div2View;

    invoke-static {v0, p1}, Lcf2;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Loj3;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcf2;->b(Ljava/lang/String;Landroid/net/Uri;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleActionWithReason(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result p0

    return p0
.end method

.method public handleActionWithReason(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/yandex/div2/DivAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsv2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public handlePayload(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
