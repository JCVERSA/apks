.class Lcom/transsion/transfer/androidasync/a0$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->g(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lst/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/s;

.field final synthetic b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final synthetic c:Lst/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$a;->a:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$a;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/a0$a;->c:Lst/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->a:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$a;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->c:Lst/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->a:Lcom/transsion/transfer/androidasync/s;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->c:Lst/a;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
