.class public Lcom/mgmi/ads/api/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/ads/api/e/e;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/e;->b:Z

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/e/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/ads/api/e/e;->a:Lcom/mgmi/ads/api/e/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/ads/api/e/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/e/e;->a:Lcom/mgmi/ads/api/e/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/ads/api/e/e;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/e;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/e/e;->a:Lcom/mgmi/ads/api/e/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/ads/api/e/e;->a:Lcom/mgmi/ads/api/e/e;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/e;->b:Z

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/e/e;->b:Z

    return p0
.end method
