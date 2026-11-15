.class Lcom/transsion/playercommon/convert/ConvertingTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/convert/ConvertingTask;->startingConvert(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
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

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    iget-object v0, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/ConvertingTask;

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTask$b;->a(I)V

    :cond_0
    return-void
.end method
