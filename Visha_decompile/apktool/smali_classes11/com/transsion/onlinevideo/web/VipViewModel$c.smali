.class public Lcom/transsion/onlinevideo/web/VipViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/web/VipViewModel;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/web/VipViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/web/VipViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipViewModel$c;->b:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipViewModel$c;->b:Lcom/transsion/onlinevideo/web/VipViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget p0, Lcom/transsion/playercommon/R$string;->subscribe__cancel_success:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkfc;->k(ZLkfc$d;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipViewModel$c;->b:Lcom/transsion/onlinevideo/web/VipViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget p0, Lcom/transsion/playercommon/R$string;->subscribe_cancel_failed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipViewModel$c;->b:Lcom/transsion/onlinevideo/web/VipViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget p0, Lcom/transsion/playercommon/R$string;->subscribe_cancel_failed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipViewModel$c;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
