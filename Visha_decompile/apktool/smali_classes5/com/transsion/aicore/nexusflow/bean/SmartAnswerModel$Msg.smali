.class Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel$Msg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Msg"
.end annotation


# instance fields
.field mContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field mRole:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel$Msg;->this$0:Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel$Msg;->mRole:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel$Msg;->mContent:Ljava/lang/String;

    return-void
.end method
