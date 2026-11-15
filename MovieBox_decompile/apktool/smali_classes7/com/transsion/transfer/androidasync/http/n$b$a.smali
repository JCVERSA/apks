.class Lcom/transsion/transfer/androidasync/http/n$b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/n$b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/j;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/n$b;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/n$b;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lst/b;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/transsion/transfer/androidasync/v;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/n$b$a$a;-><init>(Lcom/transsion/transfer/androidasync/http/n$b$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/transfer/androidasync/http/n$b$a$b;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/n$b$a$b;-><init>(Lcom/transsion/transfer/androidasync/http/n$b$a;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
