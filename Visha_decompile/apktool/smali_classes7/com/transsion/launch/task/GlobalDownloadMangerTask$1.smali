.class Lcom/transsion/launch/task/GlobalDownloadMangerTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/launch/task/GlobalDownloadMangerTask;->h(Landroid/content/Context;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/launch/task/GlobalDownloadMangerTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/launch/task/GlobalDownloadMangerTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/launch/task/GlobalDownloadMangerTask$1;->this$0:Lcom/transsion/launch/task/GlobalDownloadMangerTask;

    iput-object p2, p0, Lcom/transsion/launch/task/GlobalDownloadMangerTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/launch/task/GlobalDownloadMangerTask$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->D(Landroid/content/Context;)V

    return-void
.end method
