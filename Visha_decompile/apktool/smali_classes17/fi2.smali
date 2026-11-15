.class public abstract Lfi2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div2/DivData$a;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static final b(Lcom/yandex/div2/DivData;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/yandex/div2/DivData;->j:Lcom/yandex/div2/DivData$a;

    invoke-static {p0}, Lfi2;->a(Lcom/yandex/div2/DivData$a;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivData$State;

    iget-wide v0, p0, Lcom/yandex/div2/DivData$State;->b:J

    :goto_0
    return-wide v0
.end method
