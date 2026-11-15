.class public final Lcom/doman/core/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/doman/core/b/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/doman/core/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/doman/core/b/b;->b:Lcom/doman/core/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/doman/core/b/b;

    invoke-direct {v0, p0}, Lcom/doman/core/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doman/core/b/b;->b:Lcom/doman/core/b/b;

    :cond_0
    sget-object p0, Lcom/doman/core/b/b;->b:Lcom/doman/core/b/b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/doman/core/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 2
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0

    :try_start_0
    iget-object v0, p1, Lcom/doman/core/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/doman/core/b/a/b;

    sget v3, Lcom/doman/core/b/a/b;->l:I

    iget-object v2, p1, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    goto :goto_0

    :goto_1
    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/doman/core/b/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/doman/core/a/e;)V

    goto :goto_6

    :cond_2
    const-string v0, "POST"

    iget-object v2, p1, Lcom/doman/core/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/doman/core/b/a/b;

    sget v3, Lcom/doman/core/b/a/b;->m:I

    iget-object v2, p1, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move-object v4, v1

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    goto :goto_2

    :goto_3
    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/doman/core/b/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/doman/core/a/e;)V

    goto :goto_6

    :cond_4
    new-instance v0, Lcom/doman/core/b/a/b;

    sget v6, Lcom/doman/core/b/a/b;->l:I

    iget-object v2, p1, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    move-object v7, v1

    goto :goto_5

    :cond_5
    iget-object v1, p1, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    goto :goto_4

    :goto_5
    move-object v5, v0

    move-object v8, p2

    move-object v9, p3

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/doman/core/b/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/doman/core/a/e;)V

    :goto_6
    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v0}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0

    :try_start_0
    new-instance v0, Lcom/doman/core/b/a/a/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/doman/core/b/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v0}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/doman/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
