.class public Lcom/snaptube/premium/activity/ExploreActivity;
.super Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;

# interfaces
.implements Lo/je3;
.implements Lo/xa3;
.implements Lcom/snaptube/premium/dialog/coordinator/a$b;
.implements Lo/zb3;
.implements Lo/ie3;
.implements Lo/hb3;
.implements Lo/br2;
.implements Lo/f20;
.implements Lo/qc0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/activity/ExploreActivity$k;,
        Lcom/snaptube/premium/activity/ExploreActivity$j;
    }
.end annotation


# static fields
.field public static final F:Ljava/lang/String; = "ExploreActivity"

.field public static G:Z


# instance fields
.field public A:Lo/ya2;

.field public B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

.field public C:Landroid/os/Handler;

.field public D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public E:Landroid/util/Pair;

.field public e:Lo/wu7;

.field public f:Z

.field public g:Lo/lm3;

.field public h:Lo/or4;

.field public i:Landroidx/appcompat/widget/Toolbar;

.field public j:Landroid/view/View;

.field k:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/gb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/ti3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lo/ke3;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lo/hh3;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/ej3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:I

.field public final q:Lo/x52;

.field public r:Lo/wu7;

.field public final s:Landroid/os/Handler;

.field public t:Z

.field public u:Lo/wu7;

.field public v:Lo/bt0;

.field public w:Z

.field public x:Z

.field public y:Lo/wu7;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->f:Z

    new-instance v0, Lo/cy;

    sget-object v1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lo/cy;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->g:Lo/lm3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->j:Landroid/view/View;

    new-instance v1, Lo/x52;

    invoke-direct {v1, p0}, Lo/x52;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->q:Lo/x52;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    iput-boolean v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->z:Z

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$k;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snaptube/premium/activity/ExploreActivity$k;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;Landroid/os/Looper;Lo/xa2;)V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    new-instance v0, Lcom/snaptube/premium/activity/ExploreActivity$b;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$b;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static synthetic D0()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/activity/ExploreActivity;->P1()V

    return-void
.end method

.method public static synthetic E0(Lcom/snaptube/premium/activity/ExploreActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->T1()V

    return-void
.end method

.method public static synthetic F0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->S1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic H0(Lcom/snaptube/premium/activity/ExploreActivity;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->R1(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic I0(Lcom/snaptube/premium/activity/ExploreActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic J0(Lcom/snaptube/premium/activity/ExploreActivity;Landroid/os/Bundle;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/snaptube/premium/activity/ExploreActivity;->G1(Landroid/os/Bundle;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic J1()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/activate/ActivateAppManager;->w()Lcom/snaptube/premium/activate/ActivateAppManager;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/activate/ActivatePos;->OPEN_DIRECT:Lcom/snaptube/premium/activate/ActivatePos;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/activate/ActivateAppManager;->p(Lcom/snaptube/premium/activate/ActivatePos;)V

    return-void
.end method

.method public static synthetic K1()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "main_content_drawn"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic M1()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lo/yh4;->b(Z)V

    return-void
.end method

.method public static synthetic N0()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/activity/ExploreActivity;->J1()V

    return-void
.end method

.method public static synthetic P0()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/activity/ExploreActivity;->K1()V

    return-void
.end method

.method public static synthetic P1()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lo/yh4;->b(Z)V

    return-void
.end method

.method public static synthetic Q0(Lcom/snaptube/premium/activity/ExploreActivity;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->F1(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic R0()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/activity/ExploreActivity;->M1()V

    return-void
.end method

.method public static synthetic S0(Lcom/snaptube/premium/activity/ExploreActivity;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->L1(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic S1(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "ExploreActivityEventException"

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic V0(Lcom/snaptube/premium/activity/ExploreActivity;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/activity/ExploreActivity;->b2(J)V

    return-void
.end method

.method public static bridge synthetic Y0(Lcom/snaptube/premium/activity/ExploreActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->m2()V

    return-void
.end method

.method public static bridge synthetic Z0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method private c1()V
    .locals 3

    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a;->d()Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->a(I)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    new-instance v1, Lo/uf1;

    invoke-direct {v1, p0}, Lo/uf1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->b(Lo/a70;)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/dialog/coordinator/element/CopyLinkPopElement;

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->o:Ldagger/Lazy;

    invoke-direct {v1, p0, v2}, Lcom/snaptube/premium/dialog/coordinator/element/CopyLinkPopElement;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ldagger/Lazy;)V

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->b(Lo/a70;)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/dialog/coordinator/element/UpgradePopElement;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/dialog/coordinator/element/UpgradePopElement;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->b(Lo/a70;)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a$a;->complete()Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/snaptube/premium/dialog/coordinator/a;->g(Lcom/snaptube/premium/dialog/coordinator/a$b;)V

    return-void
.end method

.method private t2()V
    .locals 6

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x419

    const/16 v2, 0x4f2

    const/16 v3, 0x449

    const/16 v4, 0x448

    const/16 v5, 0x460

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/sa2;

    invoke-direct {v1, p0}, Lo/sa2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lo/ta2;

    invoke-direct {v2}, Lo/ta2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->z0(Lo/wu7;)V

    return-void
.end method

.method private z1()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x4e2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/va2;

    invoke-direct {v1, p0}, Lo/va2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lo/u;

    invoke-direct {v2}, Lo/u;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->y:Lo/wu7;

    return-void
.end method


# virtual methods
.method public A()Landroid/view/View;
    .locals 1

    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A1(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->y2(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->c1()V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->z1()V

    return-void
.end method

.method public final A2()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    :cond_0
    return-void
.end method

.method public final C1()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/premium/fragment/HomePageFragment;->J3()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D1()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInHomeTab fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    invoke-virtual {v0}, Lcom/snaptube/premium/fragment/TabHostFragment;->P2()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInHomeTab pageFragment: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final E1()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic F1(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->S3(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic G1(Landroid/os/Bundle;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    iget-boolean p3, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/snaptube/premium/activity/ExploreActivity;->x:Z

    if-nez p3, :cond_0

    invoke-static {p2}, Lo/ya2;->a(Landroid/view/View;)Lo/ya2;

    move-result-object p3

    iput-object p3, p0, Lcom/snaptube/premium/activity/ExploreActivity;->A:Lo/ya2;

    invoke-virtual {p0, p2}, Lcom/snaptube/base/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->A1(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->w1()V

    :cond_0
    return-void
.end method

.method public H1()I
    .locals 1

    const v0, 0x7f0902ed

    return v0
.end method

.method public final synthetic L1(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->X1(Ljava/util/List;)V

    return-void
.end method

.method public O(ZLandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->O(ZLandroid/content/Intent;)V

    invoke-static {p0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/activity/ExploreActivity$j;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$j;->y(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-static {p0, p1, p2}, Lo/y2;->a(Landroidx/fragment/app/FragmentActivity;ZLandroid/content/Intent;)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/lifecycle/n;

    invoke-direct {p1, p0}, Landroidx/lifecycle/n;-><init>(Lo/tx8;)V

    const-class p2, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/n;->a(Ljava/lang/Class;)Lo/mx8;

    move-result-object p1

    check-cast p1, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    iput-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    :cond_0
    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {p1}, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;->W()V

    return-void
.end method

.method public final synthetic O1(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->y()Lcom/snaptube/premium/ads/a;

    move-result-object v0

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/ads/a;->Z(Ljava/lang/String;)Lcom/snaptube/premium/ads/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/snaptube/premium/ads/a$d;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/snaptube/premium/ads/a$d;->a:I

    iget-object v0, v0, Lcom/snaptube/premium/ads/a$d;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    new-instance v0, Lo/af1;

    invoke-direct {v0, v1}, Lo/af1;-><init>(I)V

    invoke-static {v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->D0(Lo/af1;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gb;

    invoke-static {p1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object p1

    const-string v1, "ad_request_scene"

    const-string v2, "launch"

    invoke-virtual {p1, v1, v2}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    return-void
.end method

.method public final synthetic R1(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 3

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v1, 0x419

    if-eq v0, v1, :cond_3

    const/16 v1, 0x448

    if-eq v0, v1, :cond_2

    const/16 v1, 0x460

    if-eq v0, v1, :cond_1

    const/16 p1, 0x4f2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->u1()V

    sget-object p1, Lo/a58;->a:Landroid/os/Handler;

    new-instance v0, Lo/ma2;

    invoke-direct {v0}, Lo/ma2;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->o1(Lcom/wandoujia/base/utils/RxBus$d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->u1()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->t1(Lcom/wandoujia/base/utils/RxBus$d;)V

    :goto_0
    return-void
.end method

.method public final synthetic T1()V
    .locals 3

    const-string v0, "home"

    invoke-static {v0}, Lo/bq0;->K0(Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/notification/NotificationToolBarHelper;->a:Lcom/snaptube/premium/notification/NotificationToolBarHelper$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/notification/NotificationToolBarHelper$Companion;->c0(Landroid/content/Context;Z)V

    return-void
.end method

.method public final U1(Landroid/os/Bundle;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v2, Lcom/snaptube/premium/fragment/HomePageFragment;

    invoke-direct {v2}, Lcom/snaptube/premium/fragment/HomePageFragment;-><init>()V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "fragment_home"

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    const/4 p1, 0x1

    return p1
.end method

.method public final W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->A3(Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_init_tab"

    invoke-virtual {p2}, Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->h4(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    :goto_0
    return-void
.end method

.method public final X1(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-static {}, Lo/sq5;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/uh;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lo/sq5;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->E()Lcom/snaptube/media/MediaFileScanner;

    move-result-object p1

    sget-object v0, Lcom/snaptube/media/MediaFileScanner$From;->FILES_ACTIVITY_START:Lcom/snaptube/media/MediaFileScanner$From;

    invoke-virtual {p1, v0}, Lcom/snaptube/media/MediaFileScanner;->B(Lcom/snaptube/media/MediaFileScanner$From;)V

    :cond_3
    return-void
.end method

.method public Z1()V
    .locals 4

    sget-object v0, Lo/ua;->a:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/ads/base/AdsPos;

    sget-object v2, Lo/ua;->a:Lo/ua;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/ua;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/gb;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/gb;->c(Lo/jb;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a2()V
    .locals 5

    iget-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->z:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->z:Z

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "launch"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->A(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_TOP_BANNER:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ad_request_scene"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/gb;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/snaptube/ads/base/AdsPos;->subPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/gb;

    invoke-static {v0}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/gb;->c(Lo/jb;)V

    :cond_2
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0, v2}, Lcom/snaptube/ads/base/AdsPos;->subPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lo/ra2;

    invoke-direct {v1, p0, v0}, Lo/ra2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public b1()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b2(J)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final c2(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public final d1()V
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->v2()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->f:Z

    :cond_0
    return-void
.end method

.method public final d2()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x477

    const/16 v2, 0x479

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$h;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/activity/ExploreActivity$h;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lcom/snaptube/premium/activity/ExploreActivity$i;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/activity/ExploreActivity$i;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    return-void
.end method

.method public final e1()V
    .locals 0

    return-void
.end method

.method public f1(Lcom/snaptube/premium/views/viewanimator/DestinationType;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lo/br2;

    if-eqz v2, :cond_0

    check-cast v1, Lo/br2;

    invoke-interface {v1, p1}, Lo/br2;->f1(Lcom/snaptube/premium/views/viewanimator/DestinationType;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->finish()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x417

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    return-void
.end method

.method public fitsSystemWindowForRoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g1()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->E:Landroid/util/Pair;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/wandoujia/em/common/protomodel/Card;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, p0, v1, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->s1(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->E:Landroid/util/Pair;

    return-void
.end method

.method public getActionView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f09093e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->i:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "InflatePool"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->x1()V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->h:Lo/or4;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h1(Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->E:Landroid/util/Pair;

    return-void
.end method

.method public final h2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    invoke-virtual {v0}, Lcom/snaptube/premium/fragment/TabHostFragment;->O2()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/fragment/TabHostFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/TabHostFragment;

    invoke-virtual {v0}, Lcom/snaptube/premium/fragment/TabHostFragment;->O2()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/ry6;

    if-eqz v1, :cond_0

    check-cast v0, Lo/ry6;

    invoke-interface {v0}, Lo/ry6;->V0()V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->n3(Z)V

    :cond_0
    return-void
.end method

.method public final i1(Landroid/os/Bundle;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->J()Lo/av;

    move-result-object v0

    new-instance v1, Lo/la2;

    invoke-direct {v1, p0}, Lo/la2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {v0, v1}, Lo/av;->b(Lo/av$b;)V

    :cond_0
    invoke-static {p0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/activity/ExploreActivity$j;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$j;->y(Lcom/snaptube/premium/activity/ExploreActivity;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/premium/activity/ExploreActivity;->G:Z

    const-string v0, "pref.content_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dywx/dyframework/base/DyAppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    if-nez p1, :cond_1

    new-instance v0, Lo/vu;

    invoke-direct {v0, p0}, Lo/vu;-><init>(Landroid/content/Context;)V

    new-instance v2, Lo/na2;

    invoke-direct {v2, p0, p1}, Lo/na2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;Landroid/os/Bundle;)V

    const p1, 0x7f0c019f

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lo/vu;->a(ILandroid/view/ViewGroup;Lo/wu;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lo/ya2;->c(Landroid/view/LayoutInflater;)Lo/ya2;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->A:Lo/ya2;

    invoke-virtual {v0}, Lo/ya2;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/base/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->A1(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->w1()V

    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->d2()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->d1()V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v0, Lo/oa2;

    invoke-direct {v0}, Lo/oa2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroidx/lifecycle/j;->l()Lo/x24;

    move-result-object p1

    invoke-interface {p1}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/snaptube/premium/clean/CleanForegroundWatcher;

    invoke-direct {v0}, Lcom/snaptube/premium/clean/CleanForegroundWatcher;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v0, Lcom/snaptube/premium/activity/ExploreActivity$a;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$a;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lo/pa2;

    invoke-direct {v0}, Lo/pa2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->z2()V

    return v1
.end method

.method public final i2()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->n:Lo/hh3;

    invoke-interface {v0}, Lo/hh3;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->h2()V

    :cond_0
    return-void
.end method

.method public final j1()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->w:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->s2()V

    invoke-static {p0}, Lo/pq5;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/SplashAdManager;->C0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v2, "feed_first_card_exposure_after_splash_ad"

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lo/bq0;->D()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lo/bq0;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/bq0;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->C1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->u2()V

    invoke-static {v2}, Lo/bq0;->y0(Z)V

    invoke-static {v2}, Lo/bq0;->w0(Z)V

    :cond_1
    invoke-static {v0}, Lo/bq0;->u0(Z)V

    return v2
.end method

.method public final k2()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->y()V

    return-void
.end method

.method public l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/snaptube/premium/activity/ExploreActivity;->h1(Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/premium/activity/ExploreActivity;->s1(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final l1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "crack_code"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->p:I

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->C0()V

    iget p2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->p:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->m1(Landroid/content/Context;Z)V

    return-void
.end method

.method public final l2(J)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->r:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public m(Lcom/snaptube/premium/dialog/coordinator/IPopElement;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss popElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/snaptube/premium/dialog/coordinator/a;->e()Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss isFullViewPop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->i2()V

    :cond_0
    return-void
.end method

.method public final m1(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f1101e4

    goto :goto_0

    :cond_0
    const v0, 0x7f11072e

    :goto_0
    :try_start_0
    invoke-static {p1, v0}, Lo/b88;->e(Landroid/content/Context;I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1, p2}, Lrx/c;->q(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    new-instance p2, Lcom/snaptube/premium/activity/ExploreActivity$d;

    invoke-direct {p2, p0}, Lcom/snaptube/premium/activity/ExploreActivity$d;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {p1, p2}, Lrx/c;->t0(Lo/l3;)Lo/wu7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final m2()V
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->b()Lcom/snaptube/premium/app/d;

    move-result-object v0

    invoke-interface {v0}, Lo/kk8;->r()Lo/cc9;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$e;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/activity/ExploreActivity$e;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lcom/snaptube/premium/activity/ExploreActivity$f;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/activity/ExploreActivity$f;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v3, Lcom/snaptube/premium/activity/ExploreActivity$g;

    invoke-direct {v3, p0}, Lcom/snaptube/premium/activity/ExploreActivity$g;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snaptube/mixed_list/data/youtube/YouTubeSettingCache;->requestYoutubeSetting(Lo/cc9;Lo/k3;Lo/k3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->r:Lo/wu7;

    :cond_0
    return-void
.end method

.method public final n1(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    const-string v2, "Download"

    invoke-static {v2}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg_init_tab"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "launch_from"

    const-string v2, "notification_push"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tab_name"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final o1(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/en4;->e(Ljava/lang/String;ZLo/l3;)V

    return-void
.end method

.method public final o2(ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/snaptube/premium/activity/ExploreActivity;->p2(ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    const-string v1, "onBackPressed isShowingSplashAd"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/activity/b;->y(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/bh5;

    if-eqz v1, :cond_3

    check-cast v0, Lo/bh5;

    invoke-interface {v0}, Lo/bh5;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f1201a6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "activity_onCreate"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->q:Lo/x52;

    invoke-virtual {v2}, Lo/x52;->e()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->E1()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->i1(Landroid/os/Bundle;)Z

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->x:Z

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->q:Lo/x52;

    invoke-virtual {v0}, Lo/x52;->d()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/RxBus;->e()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snaptube/premium/activity/ExploreActivity;->G:Z

    const-string v1, "pref.content_config"

    invoke-virtual {p0, v1, v0}, Lcom/dywx/dyframework/base/DyAppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->r:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->A2()V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->y:Lo/wu7;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->y:Lo/wu7;

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_1
    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->p1(Landroid/content/Intent;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->w:Z

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->e:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->e:Lo/wu7;

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->g1()V

    return-void
.end method

.method public onResume()V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "activity_onResume"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->j1()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->d()V

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->z()V

    return-void
.end method

.method public onStart()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "activity_onStart"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-static {}, Lo/l82;->a()V

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onStart()V

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onWindowFocusChanged(Z)V

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v0, "main_content_visible"

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/log/LaunchLogger;->A(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v0, Lo/qa2;

    invoke-direct {v0}, Lo/qa2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->a2()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->t()V

    :cond_0
    return-void
.end method

.method public p(Lcom/snaptube/premium/dialog/coordinator/IPopElement;)V
    .locals 4

    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a;->e()Z

    move-result v0

    sget-object v1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPop popElement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFullViewPop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " popType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/snaptube/premium/dialog/coordinator/IPopElement;->c()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->n:Lo/hh3;

    invoke-interface {p1}, Lo/hh3;->a()V

    :cond_0
    return-void
.end method

.method public p1(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->q1(Landroid/content/Intent;Z)Z

    move-result p1

    return p1
.end method

.method public final p2(ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    if-nez p5, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "intent is null when restart MainActivity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v0, "phoenix.intent.extra.EXTRA_IS_LOGIN_RESTART"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "arg_init_tab"

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "url_of_default_tab"

    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "action_after_restart"

    invoke-virtual {p5, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const p1, 0x10018000

    invoke-virtual {p5, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p6, :cond_4

    const p1, 0x7f010014

    const p2, 0x7f010016

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q1(Landroid/content/Intent;Z)Z
    .locals 9

    const/4 v1, 0x0

    if-eqz p1, :cond_21

    iget-boolean v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "app_start_pos_new"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/snaptube/premium/log/AppStartRecorder;->h(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "launch_from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortcut"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "from"

    if-nez v3, :cond_2

    sget-object v3, Lcom/snaptube/premium/NavigationManager;->z1:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v3}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v5, "behavior"

    invoke-virtual {v3, v5}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    const-string v5, "app_start"

    invoke-interface {v3, v5}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v2

    invoke-interface {v2}, Lo/ah3;->reportEvent()V

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->B0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l1(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "snaptube.intent.action.MOVE_TASK_TO_BACK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v2, 0x417

    invoke-virtual {v0, v2}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    :try_start_0
    invoke-virtual {p0, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "MoveTaskToBackException"

    invoke-static {v0, v2}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a;->a(Z)V

    return v8

    :cond_5
    const-string v3, "phoenix.intent.action.EXIT_FOR_CRACK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l1(Landroid/content/Context;Landroid/content/Intent;)V

    return v8

    :cond_6
    const-string v3, "phoenix.intent.action.ACTION_SELF_UPDATE_AVAILABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {p0, v5}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    const-string v0, "notification"

    invoke-static {v0, v8}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->S(Ljava/lang/String;Z)V

    const-string v0, "click_notification_upgrade"

    invoke-static {p0, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->q(Landroid/content/Context;Ljava/lang/String;)V

    return v8

    :cond_7
    const-string v3, "phoenix.intent.action.EXPLORE_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->n1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v8

    :cond_8
    invoke-virtual {p0, p0, v5, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_9
    const-string v3, "snaptube.intent.action.ACTION_RESTART_ACTIVITY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v1, "arg_init_tab"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/snaptube/premium/activity/ExploreActivity;->o2(ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    return v8

    :cond_a
    const-string v3, "snaptube.intent.action.ACTION_EXIT_PROCESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return v8

    :cond_b
    const-string v3, "snaptube.intent.action.SHOW_UPGRADE_DIALOG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->x2(Ljava/lang/String;)V

    return v8

    :cond_c
    const-string v3, "phoenix.intent.action.SEARCH_TAB_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "Download"

    if-eqz v3, :cond_d

    invoke-static {v5}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_d
    const-string v3, "phoenix.intent.action.MY_THINGS_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "File"

    if-eqz v3, :cond_e

    invoke-static {v6}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_e
    const-string v3, "phoenix.intent.action.ME_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "Me"

    if-eqz v3, :cond_f

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_f
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {p1}, Lo/vs1;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    if-eqz p2, :cond_10

    goto :goto_1

    :cond_10
    const-string v1, "is_auto_autoDownload"

    invoke-static {p0}, Lo/if9;->r(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v5, "intent"

    move-object v1, p0

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lcom/snaptube/premium/NavigationManager;->Q0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return v8

    :cond_11
    :goto_1
    return v1

    :cond_12
    const-string v1, "phoenix.intent.action.HOME_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v5}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    const-string v1, "click_toolsbar_st"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    :cond_13
    const-string v1, "phoenix.intent.action.MY_FILES_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v6}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    const-string v0, "click_toolsbar_myfiles"

    invoke-static {v0}, Lo/z88;->a(Ljava/lang/String;)V

    return v8

    :cond_14
    const-string v1, "phoenix.intent.action.MY_FILES_SHORT_CUT_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v6}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    const-string v1, "click_shortcut_myfiles"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    :cond_15
    const-string v1, "phoenix.intent.action.SEARCH_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from_short_cut"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "click_shortcut_search"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_16
    const-string v1, "click_toolsbar_search"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lo/hn7;->a(Landroid/content/Intent;)V

    sget-object v0, Lcom/snaptube/premium/search/SearchConst$SearchType;->VIDEO:Lcom/snaptube/premium/search/SearchConst$SearchType;

    invoke-static {p0, v0}, Lcom/snaptube/premium/NavigationManager;->c0(Landroid/content/Context;Lcom/snaptube/premium/search/SearchConst$SearchType;)V

    return v8

    :cond_17
    const-string v1, "phoenix.intent.action.CLEAN_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "clean_from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v1, "shortcut_click"

    :cond_18
    invoke-static {}, Lo/sq5;->g()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dayuwuxian/clean/ui/base/CleanBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/NavigationManager;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_19
    const-string v1, "click_toolsbar_cleaner"

    const-string v2, "toolbar_clean_request_permission"

    invoke-static {v1, v2}, Lo/z88;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    if-nez v1, :cond_1a

    new-instance v1, Landroidx/lifecycle/n;

    invoke-direct {v1, p0}, Landroidx/lifecycle/n;-><init>(Lo/tx8;)V

    const-class v2, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->a(Ljava/lang/Class;)Lo/mx8;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    :cond_1a
    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {v1, v8}, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;->Y(Z)V

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    :goto_3
    return v8

    :cond_1b
    const-string v1, "phoenix.intent.action.BOOST_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "boost_from_toolbar"

    sget-object v2, Lcom/dayuwuxian/clean/ui/base/CleanBaseActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/NavigationManager;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1c
    const-string v1, "phoenix.intent.action.MORE_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "click_toolsbar_more"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_1d
    const-string v1, "phoenix.intent.action.BLANK_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "click_toolsbar_blank"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_1e
    const-string v1, "phoenix.intent.action.VAULT_SHORT_CUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "homescreen"

    invoke-static {p0, v0}, Lcom/snaptube/premium/NavigationManager;->u0(Landroid/content/Context;Ljava/lang/String;)V

    return v8

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    const-string v1, "action_after_restart"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_20

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->c2(Landroid/content/Intent;)V

    :cond_20
    return v8

    :cond_21
    :goto_4
    return v1
.end method

.method public final s1(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "extra.key.explore_mark"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object p1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    const-string p2, "the intent lost handler"

    invoke-static {p1, p2}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f090698

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lo/je3;

    if-eqz v2, :cond_1

    check-cast v0, Lo/je3;

    invoke-interface {v0, p1, p2, p3}, Lo/je3;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "phoenix.intent.action.EXPLORE_NAVIGATE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->m:Lo/ke3;

    invoke-interface {v0, p1, p2, p3}, Lo/je3;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final s2()V
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x402

    const/16 v2, 0x426

    const/16 v3, 0x401

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$c;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/activity/ExploreActivity$c;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {v0, v1}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->e:Lo/wu7;

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->i:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public t(Lo/a70;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canPop popElement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " intent: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->D1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final t1(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    invoke-static {p0}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lo/u04;->b(Landroid/content/Context;)V

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->l2(J)V

    invoke-static {p0}, Lcom/snaptube/premium/deeplink/FirebaseDynamicLinkChecker;->f(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final u1()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->e1()V

    return-void
.end method

.method public final u2()V
    .locals 2

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    sget-object v1, Lcom/snaptube/player_guide/PlayerGuideAdPos;->ClEANER_UPGRADE_HOME_DIALOG:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v0, v1}, Lcom/snaptube/player_guide/IPlayerGuide;->v(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a;->f()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->v:Lo/bt0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lo/bt0;

    invoke-direct {v0, p0}, Lo/bt0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->v:Lo/bt0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/snaptube/player_guide/IPlayerGuide;->a(Lcom/snaptube/player_guide/PlayerGuideAdPos;)V

    return-void
.end method

.method public useThemeColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v2()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v1, Lo/ua2;

    invoke-direct {v1, p0}, Lo/ua2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final w1()V
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->a()V

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->w()V

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->L()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->k2()V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->N6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->o:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lo/d76;->b()Lo/d76;

    move-result-object v0

    invoke-virtual {v0}, Lo/d76;->j()V

    return-void
.end method

.method public final x1()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->h:Lo/or4;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lo/gl7;->a()Lo/gl7;

    move-result-object v1

    invoke-virtual {v1}, Lo/gl7;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->g:Lo/lm3;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->J()Lo/av;

    move-result-object v1

    const-class v2, Lo/lm3;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo/av;->c(Ljava/lang/Object;Lo/av$c;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lo/lm3;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lo/or4;

    invoke-direct {v1, v0}, Lo/or4;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->h:Lo/or4;

    :cond_2
    return-void
.end method

.method public final x2(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/dialog/UpgradeDialog;

    invoke-direct {v0}, Lcom/snaptube/premium/dialog/UpgradeDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->E2(Landroidx/fragment/app/FragmentManager;)Z

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->U(Ljava/lang/String;)V

    return-void
.end method

.method public final y2(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/g86;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->t2()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->q1(Landroid/content/Intent;Z)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    sget-object p1, Lcom/phoenix/slog/SnapTubeLoggerManager;->Instance:Lcom/phoenix/slog/SnapTubeLoggerManager;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/phoenix/slog/SnapTubeLoggerManager;->checkLogcat(J)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->l2(J)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->b2(J)V

    :cond_1
    return-void
.end method

.method public final z2()V
    .locals 3

    invoke-static {}, Lo/uh;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/SplashAdManager;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0}, Lo/sq5;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/snaptube/permission/a$a;

    invoke-direct {v0}, Lcom/snaptube/permission/a$a;-><init>()V

    const-string v1, "push_permission"

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->h(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->e(I)Lcom/snaptube/permission/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->g(Z)Lcom/snaptube/permission/a$a;

    move-result-object v0

    const-string v1, "manual_trigger"

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->j(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/permission/a$a;->a()Lcom/snaptube/permission/a;

    move-result-object v0

    sget-object v1, Lcom/snaptube/permission/PermissionHelper;->a:Lcom/snaptube/permission/PermissionHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/snaptube/permission/PermissionHelper;->k(Landroid/app/Activity;Lcom/snaptube/permission/a;Lcom/snaptube/permission/PermissionHelper$a;)V

    :cond_1
    :goto_0
    return-void
.end method
