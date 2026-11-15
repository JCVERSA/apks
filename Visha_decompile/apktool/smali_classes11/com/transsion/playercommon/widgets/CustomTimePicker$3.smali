.class Lcom/transsion/playercommon/widgets/CustomTimePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/CustomTimePicker;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;->this$0:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;->this$0:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->a(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Lcom/transsion/playercommon/widgets/CustomTimePicker$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;->this$0:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->a(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Lcom/transsion/playercommon/widgets/CustomTimePicker$c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;->this$0:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->b(Lcom/transsion/playercommon/widgets/CustomTimePicker;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;->this$0:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c(Lcom/transsion/playercommon/widgets/CustomTimePicker;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker$c;->a(II)V

    :cond_0
    return-void
.end method
