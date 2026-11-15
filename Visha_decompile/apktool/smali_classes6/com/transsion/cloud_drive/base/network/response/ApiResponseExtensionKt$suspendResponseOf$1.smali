.class final Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->suspendResponseOf(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud_drive.base.network.response.ApiResponseExtensionKt"
    f = "ApiResponseExtension.kt"
    l = {
        0x4f
    }
    m = "suspendResponseOf"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->suspendResponseOf(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
