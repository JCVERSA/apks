.class public final synthetic Lmsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/TorrentItemAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmsa;->b:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmsa;->b:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->b(Lcom/transsion/btdownload/ui/TorrentItemAdapter;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)V

    return-void
.end method
