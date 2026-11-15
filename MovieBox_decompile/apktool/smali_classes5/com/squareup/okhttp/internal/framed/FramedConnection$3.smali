.class Lcom/squareup/okhttp/internal/framed/FramedConnection$3;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->D0(ZIILcom/squareup/okhttp/internal/framed/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lcom/squareup/okhttp/internal/framed/g;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 2
    .line 3
    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    .line 4
    .line 5
    iput p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    .line 6
    .line 7
    iput p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    .line 6
    .line 7
    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->T(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method
