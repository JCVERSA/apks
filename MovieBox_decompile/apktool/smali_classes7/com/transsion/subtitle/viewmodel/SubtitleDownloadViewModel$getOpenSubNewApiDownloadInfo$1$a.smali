.class final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lht/a;

.field final synthetic b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method constructor <init>(Lht/a;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a:Lht/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;->getLink()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-lez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a:Lht/a;

    .line 14
    .line 15
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;->getLink()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->l()Landroidx/lifecycle/b0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a:Lht/a;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a(Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
