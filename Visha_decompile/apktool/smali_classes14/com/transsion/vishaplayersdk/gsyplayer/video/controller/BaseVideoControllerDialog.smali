.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# instance fields
.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$addDismissListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic u(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->lambda$addDismissListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addDismissListener(Landroid/view/View;)V
    .locals 1

    new-instance v0, Led0;

    invoke-direct {v0, p0}, Led0;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x442

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->dialog_controller_options_list:I

    return p0
.end method

.method public getWith()I
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public hideNavBar(Landroid/view/Window;)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x400

    invoke-virtual {p1, p0, p0}, Landroid/view/Window;->setFlags(II)V

    const/16 p0, 0xa06

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->rv_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->getLayoutId()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$drawable;->bg_gradient:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->getWith()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Lcom/transsion/vishaplayersdk/R$style;->dialog_anim_style:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x800003

    goto :goto_0

    :cond_0
    const v2, 0x800005

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->hideNavBar(Landroid/view/Window;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->initView(Landroid/view/View;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3ec

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public showListDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
