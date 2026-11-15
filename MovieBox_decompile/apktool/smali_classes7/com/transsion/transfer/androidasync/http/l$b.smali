.class Lcom/transsion/transfer/androidasync/http/l$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/l;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/l;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;

    .line 12
    .line 13
    const-string v2, "connection closed before headers received."

    .line 14
    .line 15
    invoke-direct {v1, v2, p1}, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 25
    .line 26
    iget-boolean v1, v0, Lcom/transsion/transfer/androidasync/http/l;->k:Z

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;

    .line 31
    .line 32
    const-string v2, "connection closed before response completed."

    .line 33
    .line 34
    invoke-direct {v1, v2, p1}, Lcom/transsion/transfer/androidasync/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l$b;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
