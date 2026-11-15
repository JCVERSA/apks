.class Lcom/mgtv/a/c/b$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$25;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 0

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mgtv/a/c/b$25;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mgadplus/brower/ImgoAdWebView;->c()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mgtv/a/c/b$25;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mgadplus/brower/ImgoAdWebView;->d()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/c/b$25;->a:Lcom/mgtv/a/c/b;

    invoke-static {p0, p1}, Lcom/mgtv/a/c/b;->a(Lcom/mgtv/a/c/b;Ljava/lang/String;)V

    return-void
.end method
