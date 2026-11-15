.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->u(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/l;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;->a:Lcom/transsion/transfer/androidasync/http/l;

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
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/l;->P()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
