.class public final Lm84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll84;


# instance fields
.field public final a:Ll84;


# direct methods
.method public constructor <init>(Ll84;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm84;->a:Ll84;

    return-void
.end method

.method public static final synthetic c(Lm84;)Ll84;
    .locals 0

    iget-object p0, p0, Lm84;->a:Ll84;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm84;->a:Ll84;

    invoke-interface {p0, p1, p2}, Ll84;->a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm84;->a:Ll84;

    invoke-interface {p0, p1, p2}, Ll84;->b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/List;)Lm84;
    .locals 2

    const-string v0, "functions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/evaluable/LocalFunctionProvider;

    invoke-direct {v0, p1}, Lcom/yandex/div/evaluable/LocalFunctionProvider;-><init>(Ljava/util/List;)V

    new-instance p1, Lm84;

    new-instance v1, Lm84$a;

    invoke-direct {v1, v0, p0}, Lm84$a;-><init>(Lcom/yandex/div/evaluable/LocalFunctionProvider;Lm84;)V

    invoke-direct {p1, v1}, Lm84;-><init>(Ll84;)V

    return-object p1
.end method
