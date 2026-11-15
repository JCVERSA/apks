.class public Lcom/transsion/launch/task/GlobalDownloadMangerTask;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    const-class v1, Llw5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    const-class v1, Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    const-class v1, Lec2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    const-class v1, Ldec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    const-class v1, Lv06;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    const-class v1, Ljh5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/transsion/launch/task/GlobalDownloadMangerTask;->b:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/launch/task/GlobalDownloadMangerTask$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/launch/task/GlobalDownloadMangerTask$1;-><init>(Lcom/transsion/launch/task/GlobalDownloadMangerTask;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "show_bt_enter"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d:Z

    const/4 p0, 0x0

    return-object p0
.end method
