.class public final Lcom/yandex/div/evaluable/function/EncodeRegex;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# static fields
.field public static final c:Lcom/yandex/div/evaluable/function/EncodeRegex;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/util/List;

.field public static final f:Lcom/yandex/div/evaluable/EvaluableType;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div/evaluable/function/EncodeRegex;

    invoke-direct {v0}, Lcom/yandex/div/evaluable/function/EncodeRegex;-><init>()V

    sput-object v0, Lcom/yandex/div/evaluable/function/EncodeRegex;->c:Lcom/yandex/div/evaluable/function/EncodeRegex;

    const-string v0, "encodeRegex"

    sput-object v0, Lcom/yandex/div/evaluable/function/EncodeRegex;->d:Ljava/lang/String;

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/evaluable/function/EncodeRegex;->e:Ljava/util/List;

    sput-object v1, Lcom/yandex/div/evaluable/function/EncodeRegex;->f:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yandex/div/evaluable/function/EncodeRegex;->g:Z

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

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    new-instance p1, Lkotlin/text/Regex;

    const-string p2, "[.*+?^${}()|\\[\\]\\\\]"

    invoke-direct {p1, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/yandex/div/evaluable/function/EncodeRegex$evaluate$1;->INSTANCE:Lcom/yandex/div/evaluable/function/EncodeRegex$evaluate$1;

    invoke-virtual {p1, p0, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Le74;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/yandex/div/evaluable/function/EncodeRegex;->e:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/yandex/div/evaluable/function/EncodeRegex;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    sget-object p0, Lcom/yandex/div/evaluable/function/EncodeRegex;->f:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    sget-boolean p0, Lcom/yandex/div/evaluable/function/EncodeRegex;->g:Z

    return p0
.end method
