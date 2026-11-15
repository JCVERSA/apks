.class public final synthetic Lpj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lc74;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Ljava/lang/String;Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj3;->b:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    iput-object p2, p0, Lpj3;->c:Ljava/lang/String;

    iput-object p3, p0, Lpj3;->d:Lc74;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lpj3;->b:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    iget-object v1, p0, Lpj3;->c:Ljava/lang/String;

    iget-object p0, p0, Lpj3;->d:Lc74;

    invoke-static {v0, v1, p0}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Ljava/lang/String;Lc74;)V

    return-void
.end method
