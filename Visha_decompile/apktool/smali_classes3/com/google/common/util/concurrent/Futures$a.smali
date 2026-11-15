.class public final Lcom/google/common/util/concurrent/Futures$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ZLcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Z

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$a;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/google/common/collect/ImmutableList;Lk94;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$a;-><init>(ZLcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/CombinedFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-boolean p0, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Z

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/google/common/util/concurrent/CombinedFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
