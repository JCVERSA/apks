.class public final synthetic Lcua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/service/TorrentService;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/service/TorrentService;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcua;->b:Lcom/transsion/btdownload/service/TorrentService;

    iput-object p2, p0, Lcua;->c:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcua;->b:Lcom/transsion/btdownload/service/TorrentService;

    iget-object p0, p0, Lcua;->c:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;

    invoke-static {v0, p0}, Lcom/transsion/btdownload/service/TorrentService;->a(Lcom/transsion/btdownload/service/TorrentService;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V

    return-void
.end method
