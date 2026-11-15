.class public final Lcom/doman/core/c/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:I

.field final synthetic d:Lcom/doman/core/c/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/c/c;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/c/c$2;->d:Lcom/doman/core/c/c;

    iput p2, p0, Lcom/doman/core/c/c$2;->a:I

    iput-object p3, p0, Lcom/doman/core/c/c$2;->b:Ljava/util/ArrayList;

    const/16 p1, 0x12d

    iput p1, p0, Lcom/doman/core/c/c$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/doman/core/c/c$2;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/doman/core/c/c$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doman/core/a/e;

    iget v2, v1, Lcom/doman/core/a/e;->a:I

    iget v3, p0, Lcom/doman/core/c/c$2;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/doman/core/a/e;->b:Ljava/lang/String;

    iget-wide v3, v1, Lcom/doman/core/a/e;->g:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/doman/core/c/c$2;->d:Lcom/doman/core/c/c;

    iget-object v5, v5, Lcom/doman/core/c/c;->e:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/doman/core/c/c$2$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/doman/core/c/c$2$1;-><init>(Lcom/doman/core/c/c$2;Lcom/doman/core/a/e;Ljava/lang/String;)V

    invoke-static {v5, v3, v4}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
