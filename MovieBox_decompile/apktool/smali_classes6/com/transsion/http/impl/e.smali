.class Lcom/transsion/http/impl/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/DownloadCallback;->A(ILjava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/transsion/http/impl/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/e;->c:Lcom/transsion/http/impl/DownloadCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/http/impl/e;->b:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/e;->c:Lcom/transsion/http/impl/DownloadCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/http/impl/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/http/impl/e;->b:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/transsion/http/impl/DownloadCallback;->B(Ljava/lang/String;Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
