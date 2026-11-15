.class final Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
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
    c = "com.transsion.mimedia.fragment.MediaLibraryVideoFragment$onUserLogin$1"
    f = "MediaLibraryVideoFragment.kt"
    l = {
        0x1f4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;",
            "Lwh1<",
            "-",
            "Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->this$0:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;

    iget-object p0, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->this$0:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-direct {p1, p0, p2}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;-><init>(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->this$0:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {p1}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->g0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "mBinding"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object p1, p1, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->c:Landroid/widget/Button;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iput v2, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->label:I

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$onUserLogin$1;->this$0:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-virtual {p0}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->C0()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
