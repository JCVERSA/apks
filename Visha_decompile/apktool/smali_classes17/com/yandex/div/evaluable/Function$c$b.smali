.class public final Lcom/yandex/div/evaluable/Function$c$b;
.super Lcom/yandex/div/evaluable/Function$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/evaluable/Function$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/evaluable/EvaluableType;

.field public final b:Lcom/yandex/div/evaluable/EvaluableType;


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)V
    .locals 1

    const-string v0, "expected"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actual"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/evaluable/Function$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/evaluable/Function$c$b;->a:Lcom/yandex/div/evaluable/EvaluableType;

    iput-object p2, p0, Lcom/yandex/div/evaluable/Function$c$b;->b:Lcom/yandex/div/evaluable/EvaluableType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/Function$c$b;->b:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public final b()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/Function$c$b;->a:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method
