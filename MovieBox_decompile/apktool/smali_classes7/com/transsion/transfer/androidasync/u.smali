.class public abstract Lcom/transsion/transfer/androidasync/u;
.super Lcom/transsion/transfer/androidasync/n;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/n;->o(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected j(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/u;->r(Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public abstract r(Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/ByteBufferList;
.end method
