.class public final synthetic Lcom/google/common/collect/y0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/y0;->a:Ljava/util/function/Function;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/y0;->b:Ljava/util/function/ToIntFunction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y0;->a:Ljava/util/function/Function;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/y0;->b:Ljava/util/function/ToIntFunction;

    .line 4
    .line 5
    check-cast p1, Lcom/google/common/collect/l3;

    .line 6
    .line 7
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/d2;->c(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
