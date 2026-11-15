.class public Lcom/mgmi/net/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/net/b;


# instance fields
.field private b:Lcom/mgmi/e/a/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgmi/e/a/d;

    new-instance v1, Lcom/mgmi/e/a/b;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mgmi/e/a/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mgmi/e/a/e;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mgmi/e/a/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/mgmi/e/a/d;-><init>(Lcom/mgmi/e/a/c;Lcom/mgmi/e/a/f;)V

    iput-object v0, p0, Lcom/mgmi/net/b;->b:Lcom/mgmi/e/a/d;

    return-void
.end method

.method public static a()Lcom/mgmi/net/b;
    .locals 2

    sget-object v0, Lcom/mgmi/net/b;->a:Lcom/mgmi/net/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgmi/net/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgmi/net/b;->a:Lcom/mgmi/net/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgmi/net/b;

    invoke-direct {v1}, Lcom/mgmi/net/b;-><init>()V

    sput-object v1, Lcom/mgmi/net/b;->a:Lcom/mgmi/net/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/net/b;->a:Lcom/mgmi/net/b;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/mgmi/e/a/d;
    .locals 4

    iget-object v0, p0, Lcom/mgmi/net/b;->b:Lcom/mgmi/e/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgmi/e/a/d;

    new-instance v1, Lcom/mgmi/e/a/b;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mgmi/e/a/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mgmi/e/a/e;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mgmi/e/a/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/mgmi/e/a/d;-><init>(Lcom/mgmi/e/a/c;Lcom/mgmi/e/a/f;)V

    iput-object v0, p0, Lcom/mgmi/net/b;->b:Lcom/mgmi/e/a/d;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/net/b;->b:Lcom/mgmi/e/a/d;

    return-object p0
.end method
