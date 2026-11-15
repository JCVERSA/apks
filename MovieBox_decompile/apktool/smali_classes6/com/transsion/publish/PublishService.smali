.class public final Lcom/transsion/publish/PublishService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/PublishService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 #2\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010 R\u0016\u0010\"\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/publish/PublishService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "c",
        "(Landroid/content/Intent;)V",
        "d",
        "Ljava/lang/Runnable;",
        "runnable",
        "b",
        "(Ljava/lang/Runnable;)V",
        "onCreate",
        "p0",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "onDestroy",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "context",
        "I",
        "NOTIFICATION_ID",
        "Lcom/transsion/publish/api/bean/RequestPostEntity;",
        "Lcom/transsion/publish/api/bean/RequestPostEntity;",
        "entity",
        "sourceType",
        "e",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lcom/transsion/publish/PublishService$a;

.field private static f:Z

.field private static g:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/transsion/publish/api/bean/RequestPostEntity;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/PublishService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/PublishService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/PublishService;->e:Lcom/transsion/publish/PublishService$a;

    .line 8
    .line 9
    const-string v0, "PublishService"

    .line 10
    .line 11
    sput-object v0, Lcom/transsion/publish/PublishService;->g:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x186ac

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/transsion/publish/PublishService;->b:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/transsion/publish/PublishService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/PublishService;->e(Lcom/transsion/publish/PublishService;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/publish/p;->b:Lcom/transsion/publish/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/publish/p$a;->a()Lcom/transsion/publish/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/publish/p;->d(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final c(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/transsion/publish/PublishService;->f:Z

    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "entity"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "sourceType"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/transsion/publish/PublishService;->d:I

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    instance-of p1, v0, Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/publish/PublishService;->c:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/PublishService;->d()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/PublishService;->c:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    sget-object v2, Lcom/transsion/publish/PublishService;->g:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v3, "disposePost"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, v0

    .line 16
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/transsion/publish/PublishService;->g:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/publish/PublishService;->c:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move-object v1, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/transsion/publish/PublishService;->c:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/transsion/publish/PublishService;->d:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/transsion/publish/PublishManager;->publish(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private static final e(Lcom/transsion/publish/PublishService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/publish/PublishService;->c(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/transsion/publish/PublishService;->a:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/publish/PublishService;->g:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onDestroy"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/transsion/publish/PublishService;->f:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/publish/PublishService;->g:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onStartCommand"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/transsion/publish/l;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/transsion/publish/l;-><init>(Lcom/transsion/publish/PublishService;Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/transsion/publish/PublishService;->b(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method
