.class public final Lcom/transsion/subtitle_download/task/b$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/b;->k(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle_download/task/b;

.field final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle_download/task/b;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/transsion/subtitle_download/task/b;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Lcom/transsion/subtitle_download/task/b;->i(Lokhttp3/Response;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/16 v0, 0x194

    .line 35
    .line 36
    if-eq p1, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 v0, 0x190

    .line 43
    .line 44
    if-gt v0, p1, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x258

    .line 47
    .line 48
    if-ge p1, v0, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    .line 55
    .line 56
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/subtitle_download/task/b;->b(Lcom/transsion/subtitle_download/task/b;Lokhttp3/Response;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/transsion/subtitle_download/task/b;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/Exception;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method
