.class public final Lcom/yandex/div/core/timer/TimerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/timer/TimerController$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/yandex/div/core/timer/TimerController$a;


# instance fields
.field public final a:Lcom/yandex/div2/DivTimer;

.field public final b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final c:Lwc3;

.field public final d:Loj3;

.field public e:Lcom/yandex/div/core/view2/Div2View;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public j:Z

.field public final k:Lcom/yandex/div/core/timer/Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/timer/TimerController$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/timer/TimerController$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/timer/TimerController;->l:Lcom/yandex/div/core/timer/TimerController$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivTimer;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lwc3;Loj3;)V
    .locals 8

    const-string v0, "divTimer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollector"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/timer/TimerController;->a:Lcom/yandex/div2/DivTimer;

    iput-object p2, p0, Lcom/yandex/div/core/timer/TimerController;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p3, p0, Lcom/yandex/div/core/timer/TimerController;->c:Lwc3;

    iput-object p4, p0, Lcom/yandex/div/core/timer/TimerController;->d:Loj3;

    iget-object v2, p1, Lcom/yandex/div2/DivTimer;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/yandex/div/core/timer/TimerController;->f:Ljava/lang/String;

    iget-object p2, p1, Lcom/yandex/div2/DivTimer;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/timer/TimerController;->g:Ljava/lang/String;

    iget-object p2, p1, Lcom/yandex/div2/DivTimer;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/timer/TimerController;->h:Ljava/util/List;

    iget-object p2, p1, Lcom/yandex/div2/DivTimer;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/timer/TimerController;->i:Ljava/util/List;

    new-instance p2, Lcom/yandex/div/core/timer/Ticker;

    new-instance v3, Lcom/yandex/div/core/timer/TimerController$ticker$1;

    invoke-direct {v3, p0}, Lcom/yandex/div/core/timer/TimerController$ticker$1;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/yandex/div/core/timer/TimerController$ticker$2;

    invoke-direct {v4, p0}, Lcom/yandex/div/core/timer/TimerController$ticker$2;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/yandex/div/core/timer/TimerController$ticker$3;

    invoke-direct {v5, p0}, Lcom/yandex/div/core/timer/TimerController$ticker$3;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/yandex/div/core/timer/TimerController$ticker$4;

    invoke-direct {v6, p0}, Lcom/yandex/div/core/timer/TimerController$ticker$4;-><init>(Ljava/lang/Object;)V

    move-object v1, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/timer/Ticker;-><init>(Ljava/lang/String;Le74;Le74;Le74;Le74;Lwc3;)V

    iput-object p2, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    iget-object p2, p1, Lcom/yandex/div2/DivTimer;->a:Lcom/yandex/div/json/expressions/Expression;

    new-instance p3, Lcom/yandex/div/core/timer/TimerController$1;

    invoke-direct {p3, p0}, Lcom/yandex/div/core/timer/TimerController$1;-><init>(Lcom/yandex/div/core/timer/TimerController;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    iget-object p1, p1, Lcom/yandex/div2/DivTimer;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/yandex/div/core/timer/TimerController$2;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/timer/TimerController$2;-><init>(Lcom/yandex/div/core/timer/TimerController;)V

    invoke-virtual {p1, p4, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/timer/TimerController;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/timer/TimerController;->j(J)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/timer/TimerController;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/timer/TimerController;->k(J)V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/timer/TimerController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/TimerController;->m()V

    return-void
.end method

.method public static final synthetic d(Lcom/yandex/div/core/timer/TimerController;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/timer/TimerController;->n(J)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->B()V

    goto :goto_1

    :sswitch_1
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->q()V

    goto :goto_1

    :sswitch_2
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->p()V

    goto :goto_1

    :sswitch_3
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->C()V

    goto :goto_1

    :sswitch_4
    const-string v0, "resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->t()V

    goto :goto_1

    :sswitch_5
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->c:Lwc3;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unsupported timer command!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->h()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5185d186 -> :sswitch_5
        -0x37b237d3 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public final f()Lcom/yandex/div2/DivTimer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->a:Lcom/yandex/div2/DivTimer;

    return-object p0
.end method

.method public final g(Lcom/yandex/div/core/view2/Div2View;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    iget-boolean p1, p0, Lcom/yandex/div/core/timer/TimerController;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/timer/Ticker;->s(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/div/core/timer/TimerController;->j:Z

    :cond_0
    return-void
.end method

.method public final i(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/timer/TimerController;->l()V

    return-void
.end method

.method public final j(J)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/timer/TimerController;->n(J)V

    iget-object v1, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/timer/TimerController;->h:Ljava/util/List;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v4, "timer"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->I(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final k(J)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/timer/TimerController;->n(J)V

    iget-object v1, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/timer/TimerController;->i:Ljava/util/List;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v4, "timer"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->I(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    iget-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    invoke-virtual {v0}, Lcom/yandex/div/core/timer/Ticker;->y()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/core/timer/TimerController;->j:Z

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->k:Lcom/yandex/div/core/timer/Ticker;

    iget-object v1, p0, Lcom/yandex/div/core/timer/TimerController;->a:Lcom/yandex/div2/DivTimer;

    iget-object v1, v1, Lcom/yandex/div2/DivTimer;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, p0, Lcom/yandex/div/core/timer/TimerController;->d:Loj3;

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yandex/div/core/timer/TimerController;->a:Lcom/yandex/div2/DivTimer;

    iget-object v3, v3, Lcom/yandex/div2/DivTimer;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->d:Loj3;

    invoke-virtual {v3, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p0}, Lcom/yandex/div/core/timer/Ticker;->D(JLjava/lang/Long;)V

    return-void
.end method

.method public final n(J)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/timer/TimerController;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/timer/TimerController;->e:Lcom/yandex/div/core/view2/Div2View;

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/Div2View;->setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;

    :cond_0
    return-void
.end method
