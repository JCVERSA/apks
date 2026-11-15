.class public final Lxe4;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# static fields
.field public static final c:Lxe4;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/util/List;

.field public static final f:Lcom/yandex/div/evaluable/EvaluableType;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lxe4;

    invoke-direct {v0}, Lxe4;-><init>()V

    sput-object v0, Lxe4;->c:Lxe4;

    const-string v0, "getColorValue"

    sput-object v0, Lxe4;->d:Ljava/lang/String;

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lf84;

    sget-object v5, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {v1, v5, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1}, [Lf84;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lxe4;->e:Ljava/util/List;

    sput-object v5, Lxe4;->f:Lcom/yandex/div/evaluable/EvaluableType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const-string p0, "evaluationContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionContext"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lk81;

    invoke-virtual {p2}, Lk81;->k()I

    move-result p2

    invoke-virtual {p1}, Lpd3;->c()Lcob;

    move-result-object p1

    invoke-interface {p1, p0}, Lcob;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lk81;

    if-eqz p1, :cond_0

    check-cast p0, Lk81;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {p2}, Lk81;->c(I)Lk81;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    sget-object p0, Lxe4;->e:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lxe4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    sget-object p0, Lxe4;->f:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    sget-boolean p0, Lxe4;->g:Z

    return p0
.end method
