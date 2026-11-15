.class public interface abstract Lwi2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public beforeBindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 0

    const-string p0, "divView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionResolver"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "div"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract bindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
.end method

.method public abstract matches(Log2;)Z
.end method

.method public preprocess(Log2;Loj3;)V
    .locals 0

    const-string p0, "div"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionResolver"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract unbindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
.end method
