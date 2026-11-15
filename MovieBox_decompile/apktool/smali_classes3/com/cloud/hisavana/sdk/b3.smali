.class public final synthetic Lcom/cloud/hisavana/sdk/b3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/p$c;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/p$c;ZILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b3;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b3;->b:Lcom/cloud/hisavana/sdk/p$c;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/b3;->c:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/cloud/hisavana/sdk/b3;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/b3;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/b3;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b3;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b3;->b:Lcom/cloud/hisavana/sdk/p$c;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/b3;->c:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/hisavana/sdk/b3;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/b3;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/b3;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/d;->f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/p$c;ZILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
