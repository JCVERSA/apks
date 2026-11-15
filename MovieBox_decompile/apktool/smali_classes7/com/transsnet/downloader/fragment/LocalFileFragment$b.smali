.class public final Lcom/transsnet/downloader/fragment/LocalFileFragment$b;
.super Lui/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/LocalFileFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/LocalFileFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/LocalFileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;->a:Lcom/transsnet/downloader/fragment/LocalFileFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lui/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lui/a;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;->a:Lcom/transsnet/downloader/fragment/LocalFileFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->loadDefaultData()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
