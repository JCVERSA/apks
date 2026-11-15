.class public Lcom/yandex/div/core/expression/variables/c;
.super Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxc3;Lcom/yandex/div/core/expression/a;)V
    .locals 1

    const-string v0, "errorCollectors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionsRuntimeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;-><init>(Lxc3;Lcom/yandex/div/core/expression/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
