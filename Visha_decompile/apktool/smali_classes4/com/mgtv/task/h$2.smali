.class Lcom/mgtv/task/h$2;
.super Lcom/mgtv/task/e;
.source "SourceFile"


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
        "Lcom/mgtv/task/e<",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/task/f;

.field final synthetic b:Lcom/mgtv/task/f;

.field final synthetic c:Lcom/mgtv/task/f;

.field final synthetic d:Lcom/mgtv/task/i;

.field final synthetic e:Lcom/mgtv/task/g;

.field final synthetic f:Lcom/mgtv/task/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/task/h;Lcom/mgtv/task/f;Lcom/mgtv/task/f;Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/h$2;->f:Lcom/mgtv/task/h;

    iput-object p2, p0, Lcom/mgtv/task/h$2;->a:Lcom/mgtv/task/f;

    iput-object p3, p0, Lcom/mgtv/task/h$2;->b:Lcom/mgtv/task/f;

    iput-object p4, p0, Lcom/mgtv/task/h$2;->c:Lcom/mgtv/task/f;

    iput-object p5, p0, Lcom/mgtv/task/h$2;->d:Lcom/mgtv/task/i;

    iput-object p6, p0, Lcom/mgtv/task/h$2;->e:Lcom/mgtv/task/g;

    invoke-direct {p0}, Lcom/mgtv/task/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/mgtv/task/h$2;->a:Lcom/mgtv/task/f;

    iget-object p2, p2, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/mgtv/task/d;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/mgtv/task/h$2;->b:Lcom/mgtv/task/f;

    iget-object p1, p1, Lcom/mgtv/task/f;->g:Lcom/mgtv/task/f;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/task/h$2;->f:Lcom/mgtv/task/h;

    iget-object p2, p0, Lcom/mgtv/task/h$2;->c:Lcom/mgtv/task/f;

    iget-object p3, p0, Lcom/mgtv/task/h$2;->d:Lcom/mgtv/task/i;

    iget-object p0, p0, Lcom/mgtv/task/h$2;->e:Lcom/mgtv/task/g;

    invoke-static {p1}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/h;)Z

    move-result v0

    invoke-static {p1, p2, p3, p0, v0}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/h;Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;Z)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/task/h$2;->a:Lcom/mgtv/task/f;

    iget-object p0, p0, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/task/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
