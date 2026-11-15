.class public Lcom/mgmi/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mgmi/activity/a;


# instance fields
.field public a:Lcom/mgmi/ads/api/a/b;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/mgmi/activity/IncentiveVideoActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/activity/a;->e:Z

    const-string v1, "IncentiveVideoManager"

    iput-object v1, p0, Lcom/mgmi/activity/a;->f:Ljava/lang/String;

    iput v0, p0, Lcom/mgmi/activity/a;->g:I

    return-void
.end method

.method public static a()Lcom/mgmi/activity/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/activity/a;->b:Lcom/mgmi/activity/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/activity/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/activity/a;->b:Lcom/mgmi/activity/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/activity/a;

    invoke-direct {v1}, Lcom/mgmi/activity/a;-><init>()V

    sput-object v1, Lcom/mgmi/activity/a;->b:Lcom/mgmi/activity/a;

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
    sget-object v0, Lcom/mgmi/activity/a;->b:Lcom/mgmi/activity/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/mgmi/activity/a;->c:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/mgmi/activity/a;->g:I

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/b;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/activity/a;->c:Landroid/app/Activity;

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/activity/a;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed isComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mgmi/activity/a;->d:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
