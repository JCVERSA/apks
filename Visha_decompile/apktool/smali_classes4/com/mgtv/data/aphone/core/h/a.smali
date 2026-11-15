.class public Lcom/mgtv/data/aphone/core/h/a;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Lcom/mgtv/data/aphone/core/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "big_data_sdk"

    const-string v1, "\u6ce8\u518c\u76d1\u542c\u5668 regeisterReceiver() \u65b9\u6cd5 "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/h/a;->b()V

    new-instance v0, Lcom/mgtv/data/aphone/core/g/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/g/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/h/a;->b:Lcom/mgtv/data/aphone/core/g/a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/h/a;->b:Lcom/mgtv/data/aphone/core/g/a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53cd\u6ce8\u518c unregeisterReceiver() \u65b9\u6cd5\u4f53 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/h/a;->b:Lcom/mgtv/data/aphone/core/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "big_data_sdk"

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/h/a;->b:Lcom/mgtv/data/aphone/core/g/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/h/a;->b:Lcom/mgtv/data/aphone/core/g/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "big_data_sdk"

    const-string v1, " DataReporterService  onCreate()"

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/h/a;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "big_data_sdk"

    const-string v1, "############## DataReporterService onDestroy() "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/h/a;->b()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p0, 0x2

    return p0
.end method
