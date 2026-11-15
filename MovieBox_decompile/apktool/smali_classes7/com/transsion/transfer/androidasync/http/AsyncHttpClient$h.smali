.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;
.super Lcom/transsion/transfer/androidasync/future/w;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field public f:Lcom/transsion/transfer/androidasync/j;

.field public g:Lcom/transsion/transfer/androidasync/future/a;

.field public h:Ljava/lang/Runnable;

.field final synthetic i:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method private constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->i:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/w;->cancel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->f:Lcom/transsion/transfer/androidasync/j;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v1, Lst/d$a;

    .line 14
    .line 15
    invoke-direct {v1}, Lst/d$a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->f:Lcom/transsion/transfer/androidasync/j;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    .line 31
    .line 32
    .line 33
    :cond_2
    const/4 v0, 0x1

    .line 34
    return v0
.end method
