.class public final synthetic Ltv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

.field public final synthetic c:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv5;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iput-object p2, p0, Ltv5;->c:Lcom/lzy/okgo/model/Progress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltv5;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object p0, p0, Ltv5;->c:Lcom/lzy/okgo/model/Progress;

    invoke-static {v0, p0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->p(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
