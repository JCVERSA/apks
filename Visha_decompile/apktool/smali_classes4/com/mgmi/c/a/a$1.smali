.class Lcom/mgmi/c/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/c/a/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/c/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/c/a/a$1;->a:Lcom/mgmi/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgmi/c/a/a$1;->a:Lcom/mgmi/c/a/a;

    invoke-static {v0}, Lcom/mgmi/c/a/a;->a(Lcom/mgmi/c/a/a;)Lcom/mgmi/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgmi/c/a/a$1;->a:Lcom/mgmi/c/a/a;

    invoke-static {p0}, Lcom/mgmi/c/a/a;->a(Lcom/mgmi/c/a/a;)Lcom/mgmi/c/a/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/c/a/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/mgmi/c/a/a$1;->a:Lcom/mgmi/c/a/a;

    invoke-static {v0}, Lcom/mgmi/c/a/a;->a(Lcom/mgmi/c/a/a;)Lcom/mgmi/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mgmi/c/a/a$1;->a:Lcom/mgmi/c/a/a;

    invoke-static {v0}, Lcom/mgmi/c/a/a;->a(Lcom/mgmi/c/a/a;)Lcom/mgmi/c/a/b;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/c/a/a$1;->a:Lcom/mgmi/c/a/a;

    invoke-static {p0}, Lcom/mgmi/c/a/a;->b(Lcom/mgmi/c/a/a;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/mgmi/c/a/b;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method
