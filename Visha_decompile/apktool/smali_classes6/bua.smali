.class public final synthetic Lbua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/service/TorrentService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/service/TorrentService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbua;->b:Lcom/transsion/btdownload/service/TorrentService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lbua;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->b(Lcom/transsion/btdownload/service/TorrentService;)V

    return-void
.end method
