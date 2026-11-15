.class public final synthetic Lnsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsa;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnsa;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->b(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method
