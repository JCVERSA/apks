.class public final Landroidx/media3/datasource/cronet/CronetDataSource$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/CronetEngine;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/media3/datasource/HttpDataSource$b;

.field private final d:Landroidx/media3/datasource/c$b;

.field private e:Landroidx/media3/datasource/HttpDataSource$a;

.field private f:Lcom/google/common/base/n;

.field private g:Lw1/n;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/chromium/net/CronetEngine;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->a:Lorg/chromium/net/CronetEngine;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->b:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$b;

    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->c:Landroidx/media3/datasource/HttpDataSource$b;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->d:Landroidx/media3/datasource/c$b;

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->i:I

    .line 26
    .line 27
    const/16 p1, 0x1f40

    .line 28
    .line 29
    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->j:I

    .line 30
    .line 31
    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->k:I

    .line 32
    .line 33
    const p1, 0x8000

    .line 34
    .line 35
    .line 36
    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->l:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 14

    .line 2
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->a:Lorg/chromium/net/CronetEngine;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->e:Landroidx/media3/datasource/HttpDataSource$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroidx/media3/datasource/HttpDataSource$a;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->d:Landroidx/media3/datasource/c$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/c$b;

    invoke-virtual {v0}, Landroidx/media3/datasource/c$b;->a()Landroidx/media3/datasource/c;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource;

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->a:Lorg/chromium/net/CronetEngine;

    iget-object v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->b:Ljava/util/concurrent/Executor;

    iget v4, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->i:I

    iget v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->j:I

    iget v6, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->k:I

    iget-boolean v7, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->m:Z

    iget-boolean v8, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->n:Z

    iget-object v9, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->h:Ljava/lang/String;

    iget-object v10, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->c:Landroidx/media3/datasource/HttpDataSource$b;

    iget-object v11, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->f:Lcom/google/common/base/n;

    iget-boolean v12, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->o:Z

    iget v13, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->l:I

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroidx/media3/datasource/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Landroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;ZI)V

    .line 7
    iget-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->g:Lw1/n;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lw1/a;->c(Lw1/n;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/datasource/cronet/CronetDataSource$b;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object v0

    return-object v0
.end method
