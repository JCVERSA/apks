.class Lcom/transsion/transfer/androidasync/http/t$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/t;->y(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/t$e;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/transsion/transfer/androidasync/http/t;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/util/ArrayDeque;Lcom/transsion/transfer/androidasync/http/t$e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$a;->d:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t$a;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/t$a;->b:Lcom/transsion/transfer/androidasync/http/t$e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/t$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$a;->d:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t$a;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/t$a;->b:Lcom/transsion/transfer/androidasync/http/t$e;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t$a;->d:Lcom/transsion/transfer/androidasync/http/t;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/t$a;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/t;->m(Lcom/transsion/transfer/androidasync/http/t;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method
