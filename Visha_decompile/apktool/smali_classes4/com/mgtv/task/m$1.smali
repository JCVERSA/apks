.class Lcom/mgtv/task/m$1;
.super Lcom/mgtv/task/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/task/m;->a(Ljava/util/List;Lcom/mgtv/task/b;)Lcom/mgtv/task/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/o<",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/task/b;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mgtv/task/m;


# direct methods
.method public constructor <init>(Lcom/mgtv/task/m;Lcom/mgtv/task/d;Lcom/mgtv/task/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/m$1;->c:Lcom/mgtv/task/m;

    iput-object p3, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    iput-object p4, p0, Lcom/mgtv/task/m$1;->b:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/mgtv/task/o;-><init>(Lcom/mgtv/task/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/task/o;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/task/o;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    iget-object p2, p0, Lcom/mgtv/task/m$1;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/mgtv/task/b;->b(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    iget-object p2, p0, Lcom/mgtv/task/m$1;->c:Lcom/mgtv/task/m;

    iget-object p0, p0, Lcom/mgtv/task/m$1;->b:Ljava/util/List;

    invoke-interface {p1, p2, p0}, Lcom/mgtv/task/b;->a(Lcom/mgtv/task/m;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    iget-object p2, p0, Lcom/mgtv/task/m$1;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/mgtv/task/b;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    invoke-interface {p0}, Lcom/mgtv/task/b;->b()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    invoke-interface {p0}, Lcom/mgtv/task/b;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/task/o;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    invoke-interface {p0}, Lcom/mgtv/task/b;->c()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/task/o;->c()V

    iget-object p0, p0, Lcom/mgtv/task/m$1;->a:Lcom/mgtv/task/b;

    invoke-interface {p0}, Lcom/mgtv/task/b;->a()V

    return-void
.end method
