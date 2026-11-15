.class public final Lcom/transsion/log/upload/SendUbtRunnable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/upload/SendUbtRunnable;->sendLog$doUpload(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/transsion/log/upload/SendUbtRunnable;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:[J

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;II[JLjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->b:Lcom/transsion/log/upload/SendUbtRunnable;

    iput p3, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->c:I

    iput p4, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->d:I

    iput-object p5, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->e:[J

    iput-object p6, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->b:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-static {p0}, Lcom/transsion/log/upload/SendUbtRunnable;->access$getMSendLogCallback$p(Lcom/transsion/log/upload/SendUbtRunnable;)Lec9;

    return-void
.end method

.method public b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
    .locals 11

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/log/upload/data/UploadUrl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/UploadUrl;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->b:Lcom/transsion/log/upload/SendUbtRunnable;

    iget v4, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->c:I

    iget v5, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->d:I

    iget-object v6, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->e:[J

    iget-object v7, p0, Lcom/transsion/log/upload/SendUbtRunnable$a;->f:Ljava/io/File;

    sget-object p0, Lcom/transsion/log/upload/net/RequestManager;->a:Lcom/transsion/log/upload/net/RequestManager;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "getName(...)"

    invoke-static {v9, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/transsion/log/upload/SendUbtRunnable$a$a;

    move-object v0, v10

    move-object v2, p1

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsion/log/upload/SendUbtRunnable$a$a;-><init>(Lcom/transsion/log/upload/SendUbtRunnable;Ljava/lang/String;Ljava/io/File;II[JLjava/io/File;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v4, v8

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/log/upload/net/RequestManager;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Lcs4;)V

    :cond_0
    return-void
.end method
