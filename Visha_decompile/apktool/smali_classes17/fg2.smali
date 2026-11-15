.class public final Lfg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 0

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$u;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$u;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$u;->c()Lcom/yandex/div2/DivActionVideo;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lfg2;->b(Lcom/yandex/div2/DivActionVideo;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lcom/yandex/div2/DivActionVideo;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 1

    iget-object p0, p1, Lcom/yandex/div2/DivActionVideo;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/yandex/div2/DivActionVideo$Action;->Converter:Lcom/yandex/div2/DivActionVideo$Action$a;

    iget-object p1, p1, Lcom/yandex/div2/DivActionVideo;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivActionVideo$Action;

    invoke-virtual {v0, p1}, Lcom/yandex/div2/DivActionVideo$Action$a;->b(Lcom/yandex/div2/DivActionVideo$Action;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1, p3}, Lcom/yandex/div/core/view2/Div2View;->applyVideoCommand(Ljava/lang/String;Ljava/lang/String;Loj3;)Z

    return-void
.end method
