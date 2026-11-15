.class public Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;->d([JLandroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[J

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:I


# direct methods
.method public constructor <init>([JLandroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->b:[J

    iput-object p2, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->c:Landroid/widget/ImageView;

    iput p3, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 7

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->i(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->d:I

    if-nez p0, :cond_1

    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_collect_enter:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_farvorite_w:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x436

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_farvorited_on:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/transsion/onlinevideo/R$string;->collect_cancel_suc:I

    goto :goto_3

    :cond_5
    sget p0, Lcom/transsion/onlinevideo/R$string;->collect_cancel_fail:I

    :goto_3
    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget p1, Lcom/transsion/onlinevideo/R$string;->collect_cancel_fail:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_farvorited_on:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
