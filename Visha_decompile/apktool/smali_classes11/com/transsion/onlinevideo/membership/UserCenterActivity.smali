.class public Lcom/transsion/onlinevideo/membership/UserCenterActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final g0:Ljava/lang/String;


# instance fields
.field public N:Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

.field public O:Landroid/view/View;

.field public P:Landroid/widget/ImageView;

.field public Q:Landroid/widget/ImageView;

.field public R:Landroid/widget/ImageView;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Ljava/lang/String;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public a0:Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

.field public final b0:Ljava/util/List;

.field public c0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public d0:Landroid/widget/LinearLayout;

.field public e0:Z

.field public f0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->g0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    return-void
.end method

.method private synthetic N0(Landroid/view/View;)V
    .locals 0

    const-string p1, "vd_ott_vip_back_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic R0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static S0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static T0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "source_type"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p2}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->P0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Ljava/lang/String;Lcom/transsion/onlinevideo/membership/UserCenterActivity;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->I0(Ljava/lang/String;Lcom/transsion/onlinevideo/membership/UserCenterActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->O0(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->J0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->N0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Q0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic v0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->R0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->K0()V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->M0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic z0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->c0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    return-object p0
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->T:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lbkb;

    invoke-direct {v1, p0, p1}, Lbkb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lckb;

    invoke-direct {v0, p0}, Lckb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public C0(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {p0, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p2, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->B0(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->V:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->nickName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->userName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->nickName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Q:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_empty_user_image:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->V:Landroid/widget/TextView;

    sget p2, Lcom/transsion/onlinevideo/R$string;->palm_id_login_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/transsion/onlinevideo/R$color;->black:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->W:Landroid/widget/TextView;

    sget p2, Lcom/transsion/onlinevideo/R$string;->membership_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->A0(Z)V

    :goto_1
    return-void
.end method

.method public D0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->c0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lzjb;

    invoke-direct {v1, p0}, Lzjb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public E0()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/adapter/VipItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->a0:Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->a0:Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

    new-instance v1, Ltjb;

    invoke-direct {v1, p0}, Ltjb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->a0:Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

    new-instance v1, Lvjb;

    invoke-direct {v1, p0}, Lvjb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public F0()V
    .locals 4

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->U:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->O:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/playercommon/R$string;->os_back:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->O:Landroid/view/View;

    sget v2, Lcom/transsion/playercommon/R$string;->talkback_back:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->O:Landroid/view/View;

    new-instance v2, Lakb;

    invoke-direct {v2, p0}, Lakb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$string;->palm_id_login_me:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Y:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->U:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/onlinevideo/R$color;->os_candwhile_primary_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_pay_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->P:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_faq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->R:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_online_faq_night:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public G0()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->N:Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->c()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ldkb;

    invoke-direct {v1, p0}, Ldkb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->D()V

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkfc;->k(ZLkfc$d;)V

    return-void
.end method

.method public H0()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_user_image:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_user_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_vip_feedback:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_vip_item:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_vip_tips:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->W:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_vip_logo:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->S:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->user_pull_damping_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->c0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_vip_progress_hint:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->d0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_user_image_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->T:Landroid/widget/ImageView;

    return-void
.end method

.method public final synthetic I0(Ljava/lang/String;Lcom/transsion/onlinevideo/membership/UserCenterActivity;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1}, Lvk1;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0}, Ld39;->c(Landroid/content/Context;)I

    move-result p2

    invoke-static {p0}, Ld39;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lvk1;->b(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic J0(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final synthetic K0()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkfc;->k(ZLkfc$d;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->c0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Lcom/transsion/onlinevideo/membership/UserCenterActivity$1;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity$1;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getExpireDate()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lf06;->f(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p3, "vd_ott_vip_cl"

    invoke-static {p0, p2, p1, p3}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1000

    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final synthetic M0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lcom/transsion/onlinevideo/R$id;->detail_more:I

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2, p0}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->E0(JLandroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getExpireDate()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lf06;->f(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p3, "vd_ott_vip_cl"

    invoke-static {p0, p2, p1, p3}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1000

    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic O0(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->getVipTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->U0(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)V

    :cond_0
    return-void
.end method

.method public final synthetic P0(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "mailto:visha.rd@transsion.com"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic Q0(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "https://chat.whatsapp.com/IDflRYYwf5vC51nS9toNXi"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public U0(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)V
    .locals 8

    const/16 v0, 0x8

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getWithoutVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v2

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {p0, v6}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->A0(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->A0(Z)V

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/onlinevideo/R$string;->vip_no_activated_hint:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->setTitle(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v3, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->a0:Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

    iget-object v6, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-boolean v3, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->f0:Z

    if-eqz v3, :cond_3

    if-eqz v3, :cond_4

    sget v3, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    if-ne v3, v5, :cond_4

    :cond_3
    invoke-static {p1}, Lf06;->d(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)V

    :cond_4
    const/4 p1, 0x2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getVipStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_5

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getVipStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_7

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->d0:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_9

    move v0, v4

    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->a0:Lcom/transsion/onlinevideo/adapter/VipItemAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->b0:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->d0:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public V0()V
    .locals 4

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/onlinevideo/R$string;->feedback:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$string;->membership_feedback_message:I

    sget-boolean v3, Lpp3;->c:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/transsion/onlinevideo/R$string;->membership_feedback_email_pre:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/onlinevideo/R$string;->membership_feedback_email:I

    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->d(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->e_mail:I

    new-instance v2, Lwjb;

    invoke-direct {v2, p0}, Lwjb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->whatsapp:I

    new-instance v2, Lxjb;

    invoke-direct {v2, p0}, Lxjb;-><init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$string;->cancel:I

    new-instance v1, Lyjb;

    invoke-direct {v1}, Lyjb;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x413

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->N:Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->f(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "close_user_page"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_user_image:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_user_name:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_pay_history:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$string;->vip_purchase_history:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->J0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p0, "vd_ott_me_order_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_vip_feedback:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->V0()V

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_faq:I

    if-ne p1, v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->createBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/#/faq"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$string;->membership_faq:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/transsion/onlinevideo/web/VipHelpActivity;->q0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->C(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    const-string p1, "vd_ott_pf_cl"

    invoke-static {p0, p1}, Lcom/transsion/palmsdk/b;->h(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_user_center:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$color;->black:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->color_F06000:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->e0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playdetail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->f0:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->openVip()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->H0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->E0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->F0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->G0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->D0()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->N:Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->f(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->f0:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf06;->e(ZLjava/lang/String;)V

    :cond_1
    sget v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->e0:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    sput v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->e0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->C0(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->N:Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->f(Landroid/content/Context;)V

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->C0(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    return-void
.end method

.method public final openVip()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->e0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "source_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lkfc;->j(I)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->g0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openVip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lkfc;->j(I)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "VIP"

    const-string v2, "playdetail"

    invoke-static {p0, v0, v1, v2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public registerPalmIdListeners()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->registerPalmIdListeners()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->G()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->H()V

    return-void
.end method

.method public unRegisterPalmIdListeners()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->unRegisterPalmIdListeners()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->L()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->M()V

    return-void
.end method

.method public userLogout()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->userLogout()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->C0(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-static {v0}, Lkfc;->d(Z)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iput-boolean v0, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->U0(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)V

    return-void
.end method
