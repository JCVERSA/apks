.class final Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->m0()V
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
    c = "com.transsion.mimedia.activity.MediaBottomShareActivity$generateShareLink$1$1"
    f = "MediaBottomShareActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/mimedia/activity/MediaBottomShareActivity;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/mimedia/activity/MediaBottomShareActivity;",
            "Lwh1<",
            "-",
            "Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;

    iget-object v0, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->$id:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;-><init>(Ljava/lang/String;Lcom/transsion/mimedia/activity/MediaBottomShareActivity;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "MediaBottomShareActivity"

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->label:I

    if-nez v1, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->$id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generating share link for mediaLibraryId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->createBaseUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#/cloudShare?appName=cloud"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-static {v4}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->h0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&lang="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&country="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&mediaLibraryId="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->l0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-static {p1}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->j0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "tvShareLink"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-static {v1}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->i0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    new-instance v9, Lcom/transsion/playercommon/share/model/ShareContent;

    iget-object v1, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-static {v1}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->i0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/transsion/playercommon/share/model/ShareContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v9}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->k0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;Lcom/transsion/playercommon/share/model/ShareContent;)V

    iget-object p0, p0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$generateShareLink$1$1;->this$0:Lcom/transsion/mimedia/activity/MediaBottomShareActivity;

    invoke-static {p0}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->i0(Lcom/transsion/mimedia/activity/MediaBottomShareActivity;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share link generated successfully: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateShareLink error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
