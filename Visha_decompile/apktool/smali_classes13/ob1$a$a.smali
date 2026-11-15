.class public Lob1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic c:Lob1$a;


# direct methods
.method public constructor <init>(Lob1$a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lob1$a$a;->c:Lob1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lob1$a$a;->b:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lob1$a$a;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    invoke-virtual {p2}, Lgu8;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lob1$a$a;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lob1$a$a;->b:Ljava/util/concurrent/CompletableFuture;

    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lgu8;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
