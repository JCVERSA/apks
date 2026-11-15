.class public final La0a;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# static fields
.field public static final c:La0a;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/util/List;

.field public static final f:Lcom/yandex/div/evaluable/EvaluableType;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, La0a;

    invoke-direct {v0}, La0a;-><init>()V

    sput-object v0, La0a;->c:La0a;

    const-string v0, "replaceAll"

    sput-object v0, La0a;->d:Ljava/lang/String;

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lf84;

    invoke-direct {v5, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lf84;

    invoke-direct {v6, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v5, v6}, [Lf84;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La0a;->e:Ljava/util/List;

    sput-object v1, La0a;->f:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v0, 0x1

    sput-boolean v0, La0a;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    const-string p0, "evaluationContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionContext"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, v0, p3, p0}, Lg1a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    sget-object p0, La0a;->e:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, La0a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    sget-object p0, La0a;->f:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    sget-boolean p0, La0a;->g:Z

    return p0
.end method
