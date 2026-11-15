.class public Lcom/yandex/div/core/expression/variables/b;
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
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/expression/variables/b;->c(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
