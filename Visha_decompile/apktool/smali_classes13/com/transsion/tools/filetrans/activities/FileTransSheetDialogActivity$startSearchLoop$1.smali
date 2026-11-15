.class final Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->y1(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity$startSearchLoop$1"
    f = "FileTransSheetDialogActivity.kt"
    l = {
        0xa1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $intervalMs:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;JLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;",
            "J",
            "Lwh1<",
            "-",
            "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    iput-wide p2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->$intervalMs:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    iget-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->$intervalMs:J

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;JLwh1;)V

    iput-object p1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lnk1;

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/d;->i(Lnk1;)Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->F0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-wide v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->$intervalMs:J

    iput-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLwh1;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
