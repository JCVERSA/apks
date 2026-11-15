.class public final Lxr/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lxr/b;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    iput-object p1, p0, Lxr/b;->c:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lxr/b;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lxr/b;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxr/b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxr/b;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxr/b;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 7
    .line 8
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxr/b;->b:Z

    .line 2
    .line 3
    return-void
.end method
