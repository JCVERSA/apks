.class Lretrofit2/j$c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lretrofit2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CompletableFuture;

.field final synthetic b:Lretrofit2/j$c;


# direct methods
.method public constructor <init>(Lretrofit2/j$c;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lretrofit2/j$c$a;->b:Lretrofit2/j$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/j$c$a;->a:Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lretrofit2/d;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lretrofit2/j$c$a;->a:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lretrofit2/h;->a(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lretrofit2/d;Lretrofit2/j0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lretrofit2/j$c$a;->a:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lretrofit2/i;->a(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
