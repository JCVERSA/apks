.class public interface abstract Lsv2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getExpressionResolver()Loj3;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hideTooltip(Ljava/lang/String;)V
.end method

.method public abstract showTooltip(Ljava/lang/String;Z)V
.end method

.method public switchToState(J)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lsv2;->switchToState(JZ)V

    return-void
.end method

.method public abstract switchToState(JZ)V
.end method

.method public abstract switchToState(Lcom/yandex/div/core/state/DivStatePath;Z)V
.end method
