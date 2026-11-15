.class Lcom/transsion/playercommon/convert/ConvertingTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/convert/ConvertingTask;->onExportProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

.field final synthetic val$progress:D


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTask;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$3;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    iput-wide p2, p0, Lcom/transsion/playercommon/convert/ConvertingTask$3;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask$3;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    iget-wide v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$3;->val$progress:D

    iput-wide v1, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->progress:D

    iget-object v0, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask$3;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    iget-object v0, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    iget-wide v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$3;->val$progress:D

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/convert/ConvertingTask$b;->b(D)V

    :cond_0
    return-void
.end method
