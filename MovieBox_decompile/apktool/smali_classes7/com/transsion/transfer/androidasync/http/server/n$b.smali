.class Lcom/transsion/transfer/androidasync/http/server/n$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/q;
.implements Lcom/transsion/transfer/androidasync/http/server/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/server/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/server/n;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/n$b;->a:Lcom/transsion/transfer/androidasync/http/server/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n$b;->a:Lcom/transsion/transfer/androidasync/http/server/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/transsion/transfer/androidasync/http/server/n$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x194

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->d()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/n$d;->d:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/q;->b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
