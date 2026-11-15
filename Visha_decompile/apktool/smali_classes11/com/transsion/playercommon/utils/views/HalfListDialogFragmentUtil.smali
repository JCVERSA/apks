.class public Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;,
        Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String; = "HalfListDialogFragmentUtil"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:I

.field public h:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;

.field public i:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

.field public j:Landroid/content/DialogInterface$OnDismissListener;

.field public k:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->b:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->c:I

    .line 7
    iput p4, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->d:I

    .line 8
    iput p5, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e:I

    .line 9
    iput p6, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->c(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;)Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->k:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;

    return-object p0
.end method


# virtual methods
.method public final synthetic c(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->h:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;->a(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g:I

    return-void
.end method

.method public e(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->h:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->l:I

    return-void
.end method

.method public g()V
    .locals 5

    iget v0, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->d:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->f:I

    iget v1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->c:I

    iget v2, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e:I

    iget v3, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->l:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->I(IIIII)Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->c:I

    iget v2, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e:I

    iget v3, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->l:I

    invoke-static {v1, v0, v2, v3}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->H(IIII)Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    move-result-object v0

    :goto_0
    new-instance v1, Llm4;

    invoke-direct {v1, p0, v0}, Llm4;-><init>(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->L(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$1;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$1;-><init>(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->a:Landroid/content/Context;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/DialogFragment;->showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogFragment failed,e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->j:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setDismissListener2(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->k:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;

    return-void
.end method

.method public setOnResumeListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->i:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

    return-void
.end method
