.class public interface abstract Lsnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcob;


# direct methods
.method public static synthetic f(Lsnb;Ljava/util/List;ZLe74;ILjava/lang/Object;)Lqc2;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lsnb;->c(Ljava/util/List;ZLe74;)Lqc2;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: subscribeToVariablesChange"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lqnb;
.end method

.method public b()Ljava/util/List;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Ljava/util/List;ZLe74;)Lqc2;
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract g(Ljava/util/List;Le74;)Lqc2;
.end method

.method public abstract h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;
.end method

.method public abstract i(Lqnb;)V
.end method

.method public abstract j(Loj3;Le74;)V
.end method
