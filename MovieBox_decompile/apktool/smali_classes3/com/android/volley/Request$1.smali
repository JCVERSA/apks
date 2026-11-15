.class Lcom/android/volley/Request$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/Request;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/volley/Request$1;->val$threadId:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/volley/Request;->access$000(Lcom/android/volley/Request;)Lcom/android/volley/l$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/volley/Request$1;->val$threadId:J

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/l$a;->a(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/volley/Request;->access$000(Lcom/android/volley/Request;)Lcom/android/volley/l$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/volley/l$a;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
