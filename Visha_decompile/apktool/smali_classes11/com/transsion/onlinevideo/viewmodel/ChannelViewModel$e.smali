.class public Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$e;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgu8;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$e;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgu8;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$e;->a(Lgu8;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
