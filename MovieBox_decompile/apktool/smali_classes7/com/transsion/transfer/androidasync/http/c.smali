.class public final synthetic Lcom/transsion/transfer/androidasync/http/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lut/a;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/future/w;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/http/j;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/c;->a:Lcom/transsion/transfer/androidasync/future/w;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/c;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/c;->c:Lcom/transsion/transfer/androidasync/http/j;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/c;->a:Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/c;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/c;->c:Lcom/transsion/transfer/androidasync/http/j;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
