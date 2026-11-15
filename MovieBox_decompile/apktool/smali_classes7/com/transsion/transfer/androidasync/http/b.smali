.class public final synthetic Lcom/transsion/transfer/androidasync/http/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field public final synthetic b:Lut/b;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/future/w;

.field public final synthetic d:Lcom/transsion/transfer/androidasync/http/k;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/b;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/b;->b:Lut/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/b;->c:Lcom/transsion/transfer/androidasync/future/w;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/b;->d:Lcom/transsion/transfer/androidasync/http/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/b;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/b;->b:Lut/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/b;->c:Lcom/transsion/transfer/androidasync/future/w;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/b;->d:Lcom/transsion/transfer/androidasync/http/k;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->c(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
