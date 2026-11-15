.class public final Lm84$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll84;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm84;->d(Ljava/util/List;)Lm84;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/evaluable/LocalFunctionProvider;

.field public final synthetic b:Lm84;


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/LocalFunctionProvider;Lm84;)V
    .locals 0

    iput-object p1, p0, Lm84$a;->a:Lcom/yandex/div/evaluable/LocalFunctionProvider;

    iput-object p2, p0, Lm84$a;->b:Lm84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lm84$a;->a:Lcom/yandex/div/evaluable/LocalFunctionProvider;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/evaluable/LocalFunctionProvider;->a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/div/evaluable/MissingLocalFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lm84$a;->b:Lm84;

    invoke-static {p0}, Lm84;->c(Lm84;)Ll84;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ll84;->a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lm84$a;->a:Lcom/yandex/div/evaluable/LocalFunctionProvider;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/evaluable/LocalFunctionProvider;->b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/div/evaluable/MissingLocalFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lm84$a;->b:Lm84;

    invoke-static {p0}, Lm84;->c(Lm84;)Ll84;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ll84;->b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    :goto_0
    return-object p0
.end method
