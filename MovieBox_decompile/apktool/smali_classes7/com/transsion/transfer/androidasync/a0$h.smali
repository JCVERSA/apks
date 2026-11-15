.class Lcom/transsion/transfer/androidasync/a0$h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/transsion/transfer/androidasync/p;

.field final synthetic c:Lcom/transsion/transfer/androidasync/s;

.field final synthetic d:Lst/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$h;->b:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$h;->c:Lcom/transsion/transfer/androidasync/s;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/a0$h;->d:Lst/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->a:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->b:Lcom/transsion/transfer/androidasync/p;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->b:Lcom/transsion/transfer/androidasync/p;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->c:Lcom/transsion/transfer/androidasync/s;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->c:Lcom/transsion/transfer/androidasync/s;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$h;->d:Lst/a;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
