.class Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/livecaption/bean/SmartAnswerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Msg"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field role:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/livecaption/bean/SmartAnswerModel;


# direct methods
.method public constructor <init>(Lcom/transsion/livecaption/bean/SmartAnswerModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;->this$0:Lcom/transsion/livecaption/bean/SmartAnswerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;->role:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;->content:Ljava/lang/String;

    return-void
.end method
