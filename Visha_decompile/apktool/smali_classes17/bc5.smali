.class public abstract Lbc5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div/json/ParsingException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/json/ParsingException;->getReason()Lcom/yandex/div/json/ParsingExceptionReason;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/json/ParsingExceptionReason;->MISSING_VALUE:Lcom/yandex/div/json/ParsingExceptionReason;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    throw p0
.end method
