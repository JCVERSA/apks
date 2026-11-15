.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field final synthetic val$callback:Lut/a;

.field final synthetic val$cancel:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field final synthetic val$redirectCount:I

.field final synthetic val$request:Lcom/transsion/transfer/androidasync/http/j;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$request:Lcom/transsion/transfer/androidasync/http/j;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$redirectCount:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$cancel:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$callback:Lut/a;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$request:Lcom/transsion/transfer/androidasync/http/j;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$redirectCount:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$cancel:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;->val$callback:Lut/a;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
