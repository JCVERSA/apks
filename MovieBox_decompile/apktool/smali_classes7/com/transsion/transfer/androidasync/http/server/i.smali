.class public final synthetic Lcom/transsion/transfer/androidasync/http/server/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/server/k;

.field public final synthetic b:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/server/k;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/i;->a:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/i;->b:Ljava/io/InputStream;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/i;->a:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/i;->b:Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/k;->f(Lcom/transsion/transfer/androidasync/http/server/k;Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
