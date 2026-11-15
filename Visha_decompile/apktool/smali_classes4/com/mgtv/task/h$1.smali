.class Lcom/mgtv/task/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/task/h;->a(Ljava/util/List;Lcom/mgtv/task/i;)Lcom/mgtv/task/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgtv/task/n<",
        "TParam;TResultType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/task/f;

.field final synthetic b:Lcom/mgtv/task/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/task/h;Lcom/mgtv/task/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/h$1;->b:Lcom/mgtv/task/h;

    iput-object p2, p0, Lcom/mgtv/task/h$1;->a:Lcom/mgtv/task/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/j;Ljava/lang/Object;)Lcom/mgtv/task/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/j;",
            "TParam;)",
            "Lcom/mgtv/task/l<",
            "TResultType;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/mgtv/task/h$1;->a:Lcom/mgtv/task/f;

    iget-object p2, p1, Lcom/mgtv/task/f;->d:Lcom/mgtv/task/c;

    iget-object p1, p1, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/mgtv/task/c;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/mgtv/task/l;

    iget-object p0, p0, Lcom/mgtv/task/h$1;->a:Lcom/mgtv/task/f;

    iget-object p2, p0, Lcom/mgtv/task/f;->d:Lcom/mgtv/task/c;

    iget-object p0, p0, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/mgtv/task/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/mgtv/task/l;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
