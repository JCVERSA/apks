.class Lcom/mgtv/a/d/f/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$11;->a:Lcom/mgtv/a/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$11;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->k(Lcom/mgtv/a/d/f/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$11;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->k(Lcom/mgtv/a/d/f/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$11;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->k(Lcom/mgtv/a/d/f/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$11;->a:Lcom/mgtv/a/d/f/a;

    invoke-direct {p1, p0}, Lcom/mgtv/a/d/f/a$a;-><init>(Lcom/mgtv/a/d/f/a;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
