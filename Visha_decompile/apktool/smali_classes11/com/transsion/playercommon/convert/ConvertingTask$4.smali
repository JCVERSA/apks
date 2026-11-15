.class Lcom/transsion/playercommon/convert/ConvertingTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/convert/ConvertingTask;->onExportCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/convert/ConvertingTask;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$4;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$4;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->H(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->N()V

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask$4;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->unregister()V

    return-void
.end method
