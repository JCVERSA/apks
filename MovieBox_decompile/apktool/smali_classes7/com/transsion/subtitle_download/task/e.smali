.class public final synthetic Lcom/transsion/subtitle_download/task/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/subtitle_download/task/f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/String;Lcom/transsion/subtitle_download/task/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/subtitle_download/task/e;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/subtitle_download/task/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/subtitle_download/task/e;->c:Lcom/transsion/subtitle_download/task/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle_download/task/e;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle_download/task/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle_download/task/e;->c:Lcom/transsion/subtitle_download/task/f;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/subtitle_download/task/f;->m(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/String;Lcom/transsion/subtitle_download/task/f;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
