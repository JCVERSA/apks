.class public abstract Lno8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div/core/view2/reuse/b;Lo07;)Lcom/yandex/div/core/view2/reuse/b;
    .locals 3

    const-string v0, "existingToken"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newToken"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lfpa;->d()Lzl2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/reuse/b;->h()Lcom/yandex/div/core/view2/reuse/b;

    move-result-object p0

    invoke-virtual {p1}, Lfpa;->a()I

    move-result p1

    new-instance v2, Lcom/yandex/div/core/view2/reuse/b;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/yandex/div/core/view2/reuse/b;-><init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V

    return-object v2
.end method
