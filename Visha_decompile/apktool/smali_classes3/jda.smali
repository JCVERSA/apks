.class public final synthetic Ljda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic d:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljda;->a:Ljava/util/function/Function;

    iput-object p2, p0, Ljda;->b:Ljava/util/function/Function;

    iput-object p3, p0, Ljda;->c:Ljava/util/function/Function;

    iput-object p4, p0, Ljda;->d:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ljda;->a:Ljava/util/function/Function;

    iget-object v1, p0, Ljda;->b:Ljava/util/function/Function;

    iget-object v2, p0, Ljda;->c:Ljava/util/function/Function;

    iget-object v3, p0, Ljda;->d:Ljava/util/function/BinaryOperator;

    move-object v4, p1

    check-cast v4, Lcom/google/common/collect/s$b;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/s;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Ljava/lang/Object;)V

    return-void
.end method
