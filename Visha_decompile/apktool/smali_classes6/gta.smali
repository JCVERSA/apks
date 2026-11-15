.class public final synthetic Lgta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->a0(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
