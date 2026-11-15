.class Lcom/tmc/monitor/AppMonitor$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmc/monitor/AppMonitor;->c(Lpf/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tmc/monitor/AppMonitor;

.field final synthetic val$statObject:Lpf/c;


# direct methods
.method constructor <init>(Lcom/tmc/monitor/AppMonitor;Lpf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/monitor/AppMonitor$1;->this$0:Lcom/tmc/monitor/AppMonitor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tmc/monitor/AppMonitor$1;->val$statObject:Lpf/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tmc/monitor/AppMonitor$1;->this$0:Lcom/tmc/monitor/AppMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tmc/monitor/AppMonitor$1;->val$statObject:Lpf/c;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tmc/monitor/AppMonitor;->a(Lcom/tmc/monitor/AppMonitor;Lpf/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
