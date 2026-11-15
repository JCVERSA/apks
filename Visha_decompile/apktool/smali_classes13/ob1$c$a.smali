.class public Lob1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic c:Lob1$c;


# direct methods
.method public constructor <init>(Lob1$c;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lob1$c$a;->c:Lob1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lob1$c$a;->b:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lob1$c$a;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    iget-object p0, p0, Lob1$c$a;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
