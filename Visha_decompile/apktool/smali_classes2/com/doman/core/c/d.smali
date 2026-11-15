.class public final Lcom/doman/core/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WS_SMTTk"

    iput-object v0, p0, Lcom/doman/core/c/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/doman/core/c/d;->f:I

    iput-object p1, p0, Lcom/doman/core/c/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/doman/core/c/d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/doman/core/c/d;->d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/doman/core/c/d;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/c/d;Lcom/doman/core/a/j;)V
    .locals 8

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/doman/core/a/j;->j:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/doman/core/a/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p1, Lcom/doman/core/a/j;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v4

    new-instance v5, Lcom/doman/core/c/d$3;

    invoke-direct {v5, p0}, Lcom/doman/core/c/d$3;-><init>(Lcom/doman/core/c/d;)V

    new-instance v6, Lcom/doman/core/c/d$4;

    invoke-direct {v6, p0}, Lcom/doman/core/c/d$4;-><init>(Lcom/doman/core/c/d;)V

    iget-object v4, v4, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object v4

    :try_start_0
    new-instance v7, Lcom/android/net/toolbox/o;

    invoke-direct {v7, v1, v3, v5, v6}, Lcom/android/net/toolbox/o;-><init>(ILjava/lang/String;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iget-object v3, v4, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {v3, v7}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
