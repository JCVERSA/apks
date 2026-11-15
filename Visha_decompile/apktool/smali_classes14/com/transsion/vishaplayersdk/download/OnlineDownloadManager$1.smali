.class Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/downloadsdk/DlPluginContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->mgInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;->this$0:Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;->val$context:Landroid/content/Context;

    return-object p0
.end method

.method public getHostActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;->val$context:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoLibPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
