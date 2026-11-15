.class public Lcom/yandex/div/json/expressions/Expression$b;
.super Lcom/yandex/div/json/expressions/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/json/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/json/expressions/Expression;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/json/expressions/Expression$b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Loj3;)Ljava/lang/Object;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$b;->b:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Loj3;Le74;)Lqc2;
    .locals 0

    const-string p0, "resolver"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lqc2;->A1:Lqc2;

    return-object p0
.end method

.method public f(Loj3;Le74;)Lqc2;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$b;->b:Ljava/lang/Object;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lqc2;->A1:Lqc2;

    return-object p0
.end method
