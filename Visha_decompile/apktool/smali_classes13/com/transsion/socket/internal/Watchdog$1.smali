.class Lcom/transsion/socket/internal/Watchdog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/internal/Watchdog;-><init>(JLcom/transsion/socket/internal/Watchdog$ISocketWatchdog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/socket/internal/Watchdog;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/internal/Watchdog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/internal/Watchdog$1;->this$0:Lcom/transsion/socket/internal/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTimeOut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCallHeartBeat()V
    .locals 0

    return-void
.end method

.method public onTimeOut()V
    .locals 0

    return-void
.end method
