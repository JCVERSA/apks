.class Lcom/transsion/playercommon/convert/ConvertingTaskManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/convert/ConvertingTaskManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager$2;->this$0:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "checkConvertingList run"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ConvertingTaskManager"

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->C(ZZ)Ljava/util/ArrayList;

    return-void
.end method
