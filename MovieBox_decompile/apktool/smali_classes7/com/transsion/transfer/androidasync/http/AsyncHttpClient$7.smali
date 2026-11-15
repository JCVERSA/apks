.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field final synthetic val$callback:Lut/b;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$future:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic val$response:Lcom/transsion/transfer/androidasync/http/k;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$callback:Lut/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$future:Lcom/transsion/transfer/androidasync/future/w;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$response:Lcom/transsion/transfer/androidasync/http/k;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$e:Ljava/lang/Exception;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$result:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$callback:Lut/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$future:Lcom/transsion/transfer/androidasync/future/w;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$response:Lcom/transsion/transfer/androidasync/http/k;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$e:Ljava/lang/Exception;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$result:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->j(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
