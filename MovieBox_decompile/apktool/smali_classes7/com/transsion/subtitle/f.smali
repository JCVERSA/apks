.class public final synthetic Lcom/transsion/subtitle/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field public final synthetic b:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/subtitle/f;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/subtitle/f;->b:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/f;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/f;->b:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
