.class public abstract Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;


# instance fields
.field private mAnimationId:I

.field private mDuration:I

.field private mGravity:I

.field private mHorizontalMargin:F

.field private mLongDuration:J

.field private mMessageView:Landroid/widget/TextView;

.field private mShortDuration:J

.field private mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

.field private mVerticalMargin:F

.field private mView:Landroid/view/View;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x7d0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mShortDuration:J

    .line 7
    .line 8
    const-wide/16 v0, 0xdac

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mLongDuration:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public findIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;->findIconView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public findMessageView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;->findMessageView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getAnimationId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mAnimationId:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mGravity:I

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mHorizontalMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public final getLongDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mLongDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShortDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mShortDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mVerticalMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mXOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract isShow()Z
.end method

.method public final setAnimationId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mAnimationId:I

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mGravity:I

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mXOffset:I

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mYOffset:I

    .line 6
    .line 7
    return-void
.end method

.method public final setLongDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mLongDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mHorizontalMargin:F

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mVerticalMargin:F

    .line 4
    .line 5
    return-void
.end method

.method public final setShortDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mShortDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setToastParams(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
    .locals 1

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 7
    .line 8
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mMessageView:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->findMessageView(Landroid/view/View;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->mMessageView:Landroid/widget/TextView;

    .line 14
    .line 15
    return-void
.end method
