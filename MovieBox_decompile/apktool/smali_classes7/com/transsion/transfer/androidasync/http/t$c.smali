.class Lcom/transsion/transfer/androidasync/http/t$c;
.super Lst/d$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/t;->q(Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/j;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/t;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$c;->b:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t$c;->a:Lcom/transsion/transfer/androidasync/j;

    .line 4
    .line 5
    invoke-direct {p0}, Lst/d$a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lst/d$a;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$c;->a:Lcom/transsion/transfer/androidasync/j;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$c;->a:Lcom/transsion/transfer/androidasync/j;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
