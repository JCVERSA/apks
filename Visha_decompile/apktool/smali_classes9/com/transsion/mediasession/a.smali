.class public Lcom/transsion/mediasession/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediasession/a$a;
    }
.end annotation


# static fields
.field public static d:Lcom/transsion/mediasession/a;


# instance fields
.field public a:Lcom/transsion/mediasession/a$a;

.field public b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/transsion/mediasession/a;
    .locals 2

    sget-object v0, Lcom/transsion/mediasession/a;->d:Lcom/transsion/mediasession/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/mediasession/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/mediasession/a;->d:Lcom/transsion/mediasession/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/mediasession/a;

    invoke-direct {v1}, Lcom/transsion/mediasession/a;-><init>()V

    sput-object v1, Lcom/transsion/mediasession/a;->d:Lcom/transsion/mediasession/a;

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
    sget-object v0, Lcom/transsion/mediasession/a;->d:Lcom/transsion/mediasession/a;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/app/Application;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "MediaSessionManager"

    const-string p1, "Application is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/a;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/mediasession/a;->c:Landroid/content/Context;

    new-instance v0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    const-string v1, "com.transsion.mediasession.MediaSessionService"

    invoke-direct {v0, p1, v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/mediasession/a;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    new-instance p1, Lcom/transsion/mediasession/a$a;

    invoke-direct {p1, p0}, Lcom/transsion/mediasession/a$a;-><init>(Lcom/transsion/mediasession/a;)V

    iput-object p1, p0, Lcom/transsion/mediasession/a;->a:Lcom/transsion/mediasession/a$a;

    iget-object v0, p0, Lcom/transsion/mediasession/a;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->l(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V

    iget-object p0, p0, Lcom/transsion/mediasession/a;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->n()V

    :cond_2
    return-void
.end method
