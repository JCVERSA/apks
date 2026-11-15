.class public Lcom/mgtv/task/http/retry/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Exception;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mgtv/task/http/retry/b;->a:I

    iput-object p2, p0, Lcom/mgtv/task/http/retry/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/task/http/retry/b;->b:Ljava/lang/Exception;

    return-void
.end method
