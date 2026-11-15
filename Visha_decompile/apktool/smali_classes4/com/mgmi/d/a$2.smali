.class Lcom/mgmi/d/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/d/a;->b(Lcom/mgmi/db/dao3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/d/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/db/dao3/g;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download success - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    invoke-static {v0}, Lcom/mgmi/d/a;->b(Lcom/mgmi/d/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/mgmi/net/bean/b;

    invoke-direct {v1}, Lcom/mgmi/net/bean/b;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mgmi/e/a/d;->f(Lcom/mgmi/net/bean/b;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;Z)Z

    .line 10
    iget-object p0, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    invoke-virtual {p0}, Lcom/mgmi/d/a;->b()V

    return-void
.end method

.method public a(Lcom/mgmi/db/dao3/g;ILjava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 22
    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download http failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p4, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    invoke-static {p4, p1}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;Lcom/mgmi/db/dao3/g;)V

    .line 25
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "301%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 26
    instance-of p1, p3, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    instance-of p1, p3, Ljava/net/UnknownHostException;

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;Z)Z

    .line 29
    iget-object p0, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    const-wide/16 p1, 0xbb8

    invoke-static {p0, p1, p2}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;J)V

    return-void
.end method

.method public a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 11
    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    invoke-static {p2, p1}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;Lcom/mgmi/db/dao3/g;)V

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    invoke-static {p2}, Lcom/mgmi/d/a;->b(Lcom/mgmi/d/a;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 15
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lcom/mgmi/net/bean/b;

    invoke-direct {v0}, Lcom/mgmi/net/bean/b;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgmi/e/a/d;->e(Lcom/mgmi/net/bean/b;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;Z)Z

    .line 21
    iget-object p0, p0, Lcom/mgmi/d/a$2;->a:Lcom/mgmi/d/a;

    const-wide/16 p1, 0xbb8

    invoke-static {p0, p1, p2}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;J)V

    return-void
.end method
