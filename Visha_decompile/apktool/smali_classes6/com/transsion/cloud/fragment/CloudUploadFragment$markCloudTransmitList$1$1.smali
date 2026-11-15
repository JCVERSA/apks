.class final Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.cloud.fragment.CloudUploadFragment$markCloudTransmitList$1$1"
    f = "CloudUploadFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isUpload:Z

.field final synthetic $totalSize:J

.field final synthetic $videoCloudDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(JLjava/util/List;ZLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
            ">;Z",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$totalSize:J

    iput-object p3, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$videoCloudDataList:Ljava/util/List;

    iput-boolean p4, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$isUpload:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 6
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

    new-instance p1, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;

    iget-wide v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$totalSize:J

    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$videoCloudDataList:Ljava/util/List;

    iget-boolean v4, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$isUpload:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;-><init>(JLjava/util/List;ZLwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$totalSize:J

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$videoCloudDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-boolean p0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1$1;->$isUpload:Z

    invoke-static {v0, v1, p1, p0}, Lcz5;->f(JIZ)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
