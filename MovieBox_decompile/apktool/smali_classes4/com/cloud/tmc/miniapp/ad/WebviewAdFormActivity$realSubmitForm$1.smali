.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/ad/bean/FormBean;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;Lcom/cloud/tmc/ad/bean/FormBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO0O0:Lcom/cloud/tmc/ad/bean/FormBean;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1$getType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1$getType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "fail"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 7
    .line 8
    iget p2, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    .line 9
    .line 10
    iget v0, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0O0:I

    .line 11
    .line 12
    if-gt p2, v0, :cond_0

    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    iput p2, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    .line 17
    .line 18
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO0O0:Lcom/cloud/tmc/ad/bean/FormBean;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput p2, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    .line 10
    .line 11
    return-void
.end method
