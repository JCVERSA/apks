.class public final synthetic Lcom/transsion/shorttv/subtitle/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field public final synthetic b:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/d;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/d;->b:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/d;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/d;->b:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
