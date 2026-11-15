.class public final synthetic Ldua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/service/TorrentService$c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/service/TorrentService$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldua;->b:Lcom/transsion/btdownload/service/TorrentService$c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldua;->b:Lcom/transsion/btdownload/service/TorrentService$c;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$c;->b(Lcom/transsion/btdownload/service/TorrentService$c;Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V

    return-void
.end method
