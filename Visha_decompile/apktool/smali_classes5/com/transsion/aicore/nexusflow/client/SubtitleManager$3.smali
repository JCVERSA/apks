.class Lcom/transsion/aicore/nexusflow/client/SubtitleManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/client/SubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$3;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$3;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->stop()V

    return-void
.end method
