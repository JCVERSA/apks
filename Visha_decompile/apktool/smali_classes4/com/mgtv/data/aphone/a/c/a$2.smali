.class Lcom/mgtv/data/aphone/a/c/a$2;
.super Lcom/mgtv/data/aphone/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/a/c/a;->a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/data/aphone/b/c/a<",
        "Lcom/mgtv/data/aphone/b/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/data/aphone/a/b/b;

.field final synthetic b:Lcom/mgtv/data/aphone/a/c/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/a/c/a;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/a/c/a$2;->b:Lcom/mgtv/data/aphone/a/c/a;

    iput-object p2, p0, Lcom/mgtv/data/aphone/a/c/a$2;->a:Lcom/mgtv/data/aphone/a/b/b;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/data/aphone/b/b/a;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/mgtv/data/aphone/b/b/a;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/c/a$2;->a:Lcom/mgtv/data/aphone/a/b/b;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/mgtv/data/aphone/a/b/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/data/aphone/a/c/a$2;->a:Lcom/mgtv/data/aphone/a/b/b;

    if-eqz p0, :cond_1

    iget v1, p1, Lcom/mgtv/data/aphone/b/b/a;->a:I

    iget-object p1, p1, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lcom/mgtv/data/aphone/a/b/b;->a(IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
