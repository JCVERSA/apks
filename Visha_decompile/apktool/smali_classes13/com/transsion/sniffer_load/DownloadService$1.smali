.class Lcom/transsion/sniffer_load/DownloadService$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadService;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/DownloadService;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$1;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$1;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$1;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->a(Lcom/transsion/sniffer_load/DownloadService;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p0

    invoke-static {v0, p0}, Lw6c;->y(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 p0, 0x0

    return-object p0
.end method
