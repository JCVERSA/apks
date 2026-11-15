.class public abstract Lph;
.super Llg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {p0, v0}, Llg;-><init>(Lcom/yandex/div/evaluable/EvaluableType;)V

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    const-string v0, "evaluationContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "expressionContext"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Llg;->m()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Llg;->g()Lcom/yandex/div/evaluable/EvaluableType;

    move-result-object v0

    invoke-virtual {p0}, Llg;->m()Z

    move-result p0

    invoke-static {p2, p3, v0, p1, p0}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->j(Ljava/lang/String;Ljava/util/List;Lcom/yandex/div/evaluable/EvaluableType;Ljava/lang/Object;Z)V

    sget-object p2, Lzfb;->a:Lzfb;

    :cond_1
    return-object p2
.end method
