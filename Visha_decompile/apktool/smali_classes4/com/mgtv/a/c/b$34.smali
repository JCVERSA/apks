.class Lcom/mgtv/a/c/b$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
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

    iput-object p1, p0, Lcom/mgtv/a/c/b$34;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "comment H5  playEnd  "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "user"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mgtv/a/c/b$34;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/mgtv/a/c/d;->d(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/c/b$34;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p1, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mgtv/a/c/e;->g()V

    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/c/b$34;->a:Lcom/mgtv/a/c/b;

    invoke-static {p0}, Lcom/mgtv/a/c/b;->b(Lcom/mgtv/a/c/b;)V

    return-void
.end method
