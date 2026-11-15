.class public final Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;
.super Lcom/hisavana/common/interfacz/TAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClicked source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdItemFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lrz5$a;->a(I)V

    return-void
.end method

.method public onClosed(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokAdItemFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->E(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->USER_CLOSED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->G(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed info position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokAdItemFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->E(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)V

    .line 6
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->USER_CLOSED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->G(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError after bind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokAdItemFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->LOAD_FAILED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->H(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public onLoad()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoad after bind position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokAdItemFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->v(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->u(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)V

    :cond_0
    return-void
.end method

.method public onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNativeFeedClicked source="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdItemFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lrz5$a;->a(I)V

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNativeFeedShow source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokAdItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->D(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)V

    return-void
.end method

.method public onShow(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShow source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokAdItemFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->D(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)V

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokAdItemFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "-10000"

    :cond_1
    invoke-static {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->F(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->LOAD_FAILED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->H(Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method
