.class public final synthetic Lkt/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

.field public final synthetic b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkt/c;->a:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 5
    .line 6
    iput-object p2, p0, Lkt/c;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkt/c;->a:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 2
    .line 3
    iget-object v1, p0, Lkt/c;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->n0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
