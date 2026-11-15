.class public final Ltl4;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltl4$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:Landroid/view/View;

.field public c:I

.field public d:I

.field public e:Ltl4$a;

.field public f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Ltl4;->a:Z

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->layout_hs_popupwindow_confirm:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const-string v0, "inflate(...)"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Ltl4;->b:Landroid/view/View;

    const-string v0, "popupView"

    if-nez p3, :cond_0

    .line 4
    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p3, v1

    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {p3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0}, Ltl4;->g()V

    .line 9
    new-instance p3, Lql4;

    invoke-direct {p3, p0, p1}, Lql4;-><init>(Ltl4;Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 10
    iget-object p1, p0, Ltl4;->b:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->iv_pop_logo:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    iput-object p1, p0, Ltl4;->f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 11
    iget-object p1, p0, Ltl4;->b:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->tv_pop_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltl4;->g:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Ltl4;->b:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->tv_pop_size:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltl4;->h:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Ltl4;->b:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->iv_pop_close:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltl4;->i:Landroid/widget/ImageView;

    .line 14
    iget-object p1, p0, Ltl4;->b:Landroid/view/View;

    if-nez p1, :cond_5

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->btn_pop_confirm:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 15
    new-instance p3, Lrl4;

    invoke-direct {p3, p2, p0}, Lrl4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ltl4;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_6
    iget-object p1, p0, Ltl4;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    new-instance p2, Lsl4;

    invoke-direct {p2, p0}, Lsl4;-><init>(Ltl4;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltl4;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method

.method public static synthetic a(Ltl4;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Ltl4;->d(Ltl4;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Ltl4;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltl4;->f(Ltl4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ltl4;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltl4;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ltl4;Landroid/view/View;)V

    return-void
.end method

.method public static final d(Ltl4;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltl4;->e:Ltl4$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltl4$a;->a()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Ltl4;->a:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Ltl4;->i(Landroid/app/Activity;F)V

    :cond_2
    return-void
.end method

.method public static final e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ltl4;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->f0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object p0, p1, Ltl4;->e:Ltl4$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ltl4$a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final f(Ltl4;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Ltl4;->c:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Ltl4;->d:I

    return-void
.end method

.method public final h(Ltl4$a;)V
    .locals 1

    const-string v0, "popwindowEventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltl4;->e:Ltl4$a;

    return-void
.end method

.method public final i(Landroid/app/Activity;F)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final j(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->g0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget p2, p0, Ltl4;->c:I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ltl4;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-le p2, v0, :cond_2

    iget-boolean p2, p0, Ltl4;->a:Z

    if-eqz p2, :cond_2

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, p2}, Ltl4;->i(Landroid/app/Activity;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :try_start_2
    iget p1, p0, Ltl4;->c:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iget p1, p0, Ltl4;->d:I

    sub-int/2addr p5, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1, p4, p5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method

.method public final k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltl4;->f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-static {v1, p1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iget-object v2, p0, Ltl4;->f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    const/4 v3, 0x1

    invoke-static {v1, p1, v3, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_1
    if-eqz p1, :cond_7

    :try_start_0
    iget-object v1, p0, Ltl4;->g:Landroid/widget/TextView;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p0, p0, Ltl4;->h:Landroid/widget/TextView;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getSourceSize()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    :goto_4
    return-void
.end method
