.class public final Lvg4;
.super Llg;
.source "SourceFile"


# static fields
.field public static final g:Lvg4;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lvg4;

    invoke-direct {v0}, Lvg4;-><init>()V

    sput-object v0, Lvg4;->g:Lvg4;

    const-string v0, "getOptDictFromArray"

    sput-object v0, Lvg4;->h:Ljava/lang/String;

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lf84;

    sget-object v5, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {v1, v5, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1}, [Lf84;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lvg4;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

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

    invoke-virtual {p0}, Lvg4;->f()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->d(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 0

    sget-object p0, Lvg4;->i:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lvg4;->h:Ljava/lang/String;

    return-object p0
.end method
