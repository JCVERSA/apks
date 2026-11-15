.class public final Ln25;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# static fields
.field public static final c:Ln25;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/util/List;

.field public static final f:Lcom/yandex/div/evaluable/EvaluableType;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln25;

    invoke-direct {v0}, Ln25;-><init>()V

    sput-object v0, Ln25;->c:Ln25;

    const-string v0, "sub"

    sput-object v0, Ln25;->d:Ljava/lang/String;

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;Z)V

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ln25;->e:Ljava/util/List;

    sput-object v1, Ln25;->f:Lcom/yandex/div/evaluable/EvaluableType;

    sput-boolean v2, Ln25;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    const-string p0, "evaluationContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionContext"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v0, p2, 0x1

    if-gez p2, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/yandex/div/evaluable/Evaluator;->b:Lcom/yandex/div/evaluable/Evaluator$a;

    sget-object p2, Lgpa$c$a$f$a;->a:Lgpa$c$a$f$a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p3}, Lcom/yandex/div/evaluable/Evaluator$a;->b(Lgpa$c$a$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    const-string p0, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p3, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move p2, v0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    sget-object p0, Ln25;->e:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Ln25;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    sget-object p0, Ln25;->f:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    sget-boolean p0, Ln25;->g:Z

    return p0
.end method
