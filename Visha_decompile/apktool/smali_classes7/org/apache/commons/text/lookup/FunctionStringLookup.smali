.class final Lorg/apache/commons/text/lookup/FunctionStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/text/lookup/AbstractStringLookup;"
    }
.end annotation


# instance fields
.field private final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/text/lookup/FunctionStringLookup;->function:Ljava/util/function/Function;

    return-void
.end method

.method public static on(Ljava/util/Map;)Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ln84;

    invoke-direct {v0, p0}, Ln84;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/FunctionStringLookup;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/text/lookup/FunctionStringLookup;->function:Ljava/util/function/Function;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [function="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/text/lookup/FunctionStringLookup;->function:Ljava/util/function/Function;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
