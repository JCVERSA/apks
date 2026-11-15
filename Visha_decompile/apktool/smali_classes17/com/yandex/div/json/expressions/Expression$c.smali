.class public final Lcom/yandex/div/json/expressions/Expression$c;
.super Lcom/yandex/div/json/expressions/Expression$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/json/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Llx7;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Llx7;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/div/json/expressions/Expression$b;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/yandex/div/json/expressions/Expression$c;->c:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/yandex/div/json/expressions/Expression$c;->d:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/yandex/div/json/expressions/Expression$c;->e:Llx7;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Llx7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget-object p3, Llx7;->a:Llx7;

    const-string p4, "LOG"

    invoke-static {p3, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/json/expressions/Expression$c;-><init>(Ljava/lang/String;Ljava/lang/String;Llx7;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression$c;->g(Loj3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Loj3;)Ljava/lang/String;
    .locals 3

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/json/expressions/Expression$c;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lrm5;->a:Lrm5;

    iget-object v0, p0, Lcom/yandex/div/json/expressions/Expression$c;->c:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lrm5;->e(Lrm5;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/json/expressions/Expression$c;->f:Ljava/lang/String;
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/yandex/div/json/expressions/Expression$c;->e:Llx7;

    invoke-interface {v0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/yandex/div/json/expressions/Expression$c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/div/json/expressions/Expression$c;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object p1
.end method
