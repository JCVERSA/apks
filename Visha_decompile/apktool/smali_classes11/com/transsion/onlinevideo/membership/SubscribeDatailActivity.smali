.class public Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"


# static fields
.field public static final U:Ljava/lang/String;


# instance fields
.field public N:Lcom/transsion/onlinevideo/web/VipViewModel;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->U:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic D0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static E0(JLandroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "subscribe_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v0, p2}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->z0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->B0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic r0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->D0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->A0(Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->C0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic v0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->G0()V

    return-void
.end method


# virtual methods
.method public final synthetic A0(Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;->getNextExpireDate()J

    move-result-wide v1

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v2, v3}, Lit1;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;->getRenewalWay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final synthetic B0(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->R:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->R:Landroid/widget/TextView;

    const-string p1, "#87DEDEDE"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final synthetic C0(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->N:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->T:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/onlinevideo/web/VipViewModel;->a(Landroid/content/Context;J)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public F0()V
    .locals 4

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/onlinevideo/R$string;->unsubscribe:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/onlinevideo/R$string;->tip_unsubscribe:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->d(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v2, Lb2a;

    invoke-direct {v2, p0}, Lb2a;-><init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->unsubscribe_later:I

    new-instance v2, Lc2a;

    invoke-direct {v2}, Lc2a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->T:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwz5;->a0(Ljava/lang/String;)V

    return-void
.end method

.method public final G0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://play.google.com/store/account/subscriptions"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lwz5;->b0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_subscribe_detail:I

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

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/web/VipViewModel;

    iput-object p1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->N:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->x0()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->N:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lx1a;

    invoke-direct {v0, p0}, Lx1a;-><init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->N:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Ly1a;

    invoke-direct {v0, p0}, Ly1a;-><init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "subscribe_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->T:J

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->N:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/web/VipViewModel;->g(J)V

    invoke-static {}, Lwz5;->c0()V

    return-void
.end method

.method public w0()V
    .locals 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$string;->unsubscribe_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity$a;-><init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Landroid/content/Context;Z)V

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/onlinevideo/R$string;->unsubscribe_turn:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->S:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public x0()V
    .locals 4

    sget v0, Lcom/transsion/onlinevideo/R$id;->price:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->O:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->date:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->P:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->pay:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->Q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->R:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->S:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lz1a;

    invoke-direct {v1, p0}, Lz1a;-><init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->R:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->R:Landroid/widget/TextView;

    new-instance v1, La2a;

    invoke-direct {v1, p0}, La2a;-><init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscribe_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->N:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/onlinevideo/web/VipViewModel;->g(J)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->w0()V

    return-void
.end method

.method public final synthetic y0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic z0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->F0()V

    return-void
.end method
