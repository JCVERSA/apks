.class public final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/a;

.field final synthetic b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

.field final synthetic c:Lcom/transsion/subtitle/fragment/i;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/a;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->c:Lcom/transsion/subtitle/fragment/i;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->g:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    new-instance v9, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->c:Lcom/transsion/subtitle/fragment/i;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget v8, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->g:I

    .line 16
    .line 17
    move-object v1, v9

    .line 18
    move-object v2, p1

    .line 19
    invoke-direct/range {v1 .. v8}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/b;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v9, p2}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-ne p1, p2, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1
.end method
