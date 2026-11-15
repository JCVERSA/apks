.class Lcom/mgtv/a/c/b$32;
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
.field final synthetic a:Lcom/mgmi/model/m;

.field final synthetic b:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;Lcom/mgmi/model/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$32;->b:Lcom/mgtv/a/c/b;

    iput-object p2, p0, Lcom/mgtv/a/c/b$32;->a:Lcom/mgmi/model/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 2

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "comment H5 showMedia imgData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isFinished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/a/c/b$32;->b:Lcom/mgtv/a/c/b;

    invoke-static {v1}, Lcom/mgtv/a/c/b;->a(Lcom/mgtv/a/c/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/a/c/b$32;->b:Lcom/mgtv/a/c/b;

    invoke-static {p2}, Lcom/mgtv/a/c/b;->a(Lcom/mgtv/a/c/b;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/mgtv/a/c/b$32;->b:Lcom/mgtv/a/c/b;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/mgtv/a/c/b;->F:Z

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mgmi/model/CreativeMediaData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/CreativeMediaData;

    iput-object p1, p2, Lcom/mgtv/a/c/b;->B:Lcom/mgmi/model/CreativeMediaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/c/b$32;->b:Lcom/mgtv/a/c/b;

    iget-object p2, p1, Lcom/mgtv/a/c/b;->B:Lcom/mgmi/model/CreativeMediaData;

    iget-object p0, p0, Lcom/mgtv/a/c/b$32;->a:Lcom/mgmi/model/m;

    invoke-virtual {p1, p2, p0}, Lcom/mgtv/a/c/b;->a(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V

    return-void
.end method
