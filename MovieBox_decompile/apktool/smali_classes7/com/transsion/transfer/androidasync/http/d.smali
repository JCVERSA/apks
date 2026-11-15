.class public final synthetic Lcom/transsion/transfer/androidasync/http/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/j;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field public final synthetic e:Lut/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/d;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/d;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/transfer/androidasync/http/d;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/d;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/d;->e:Lut/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/d;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/d;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/transfer/androidasync/http/d;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/d;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/d;->e:Lut/a;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->U(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
