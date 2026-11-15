.class Lcom/mgtv/task/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/task/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mgtv/task/a$a<",
        "TParam;TResultType;>;"
    }
.end annotation


# instance fields
.field a:Lcom/mgtv/task/g;

.field final synthetic b:Lcom/mgtv/task/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/task/h;Lcom/mgtv/task/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/h$a;->b:Lcom/mgtv/task/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mgtv/task/h$a;->a:Lcom/mgtv/task/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/f;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/mgtv/task/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/mgtv/task/a;-><init>(Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/a$a;Z)V

    iget-object v1, p0, Lcom/mgtv/task/h$a;->b:Lcom/mgtv/task/h;

    invoke-static {v1}, Lcom/mgtv/task/h;->b(Lcom/mgtv/task/h;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/task/h$a;->a:Lcom/mgtv/task/g;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mgtv/task/h$a;->b:Lcom/mgtv/task/h;

    invoke-static {p0}, Lcom/mgtv/task/h;->c(Lcom/mgtv/task/h;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0, v0, p1, p2}, Lcom/mgtv/task/h;->a(Ljava/util/concurrent/Executor;Lcom/mgtv/task/a;Lcom/mgtv/task/f;Z)V

    return-void
.end method
