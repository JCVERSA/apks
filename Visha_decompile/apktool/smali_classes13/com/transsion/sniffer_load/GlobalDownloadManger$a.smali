.class public Lcom/transsion/sniffer_load/GlobalDownloadManger$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/GlobalDownloadManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/GlobalDownloadManger;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/GlobalDownloadManger;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger$a;->b:Lcom/transsion/sniffer_load/GlobalDownloadManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger$a;->b:Lcom/transsion/sniffer_load/GlobalDownloadManger;

    check-cast p2, Lry2;

    iput-object p2, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p1, "download_service_connected"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger$a;->b:Lcom/transsion/sniffer_load/GlobalDownloadManger;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    return-void
.end method
