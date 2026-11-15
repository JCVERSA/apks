.class public abstract Llj3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/yandex/div/json/ParsingException;)Z
    .locals 0

    invoke-static {p0}, Llj3;->b(Lcom/yandex/div/json/ParsingException;)Z

    move-result p0

    return p0
.end method

.method public static final b(Lcom/yandex/div/json/ParsingException;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/json/ParsingException;->getReason()Lcom/yandex/div/json/ParsingExceptionReason;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/json/ParsingExceptionReason;->MISSING_VARIABLE:Lcom/yandex/div/json/ParsingExceptionReason;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/json/ParsingException;->getReason()Lcom/yandex/div/json/ParsingExceptionReason;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/json/ParsingExceptionReason;->INVALID_VALUE:Lcom/yandex/div/json/ParsingExceptionReason;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/json/ParsingException;->getReason()Lcom/yandex/div/json/ParsingExceptionReason;

    move-result-object p0

    sget-object v0, Lcom/yandex/div/json/ParsingExceptionReason;->TYPE_MISMATCH:Lcom/yandex/div/json/ParsingExceptionReason;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
