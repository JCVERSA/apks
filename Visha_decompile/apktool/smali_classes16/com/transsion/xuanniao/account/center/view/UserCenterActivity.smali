.class public Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lqq7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;
    }
.end annotation


# static fields
.field public static final synthetic r:I


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:LOppOOO0/OppOp0;

.field public l:Lmm7;

.field public m:Lcom/transsion/xuanniao/account/center/view/o;

.field public n:Z

.field public o:Landroid/widget/PopupWindow;

.field public p:Lho7;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->e:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->f:I

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->g:I

    const/16 v0, 0x3ec

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->h:I

    const/16 v0, 0x3ed

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->i:I

    const/16 v0, 0x3ef

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->j:I

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->D0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->E0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->n:Z

    invoke-static {p0}, Lvo7;->a(Landroid/content/Context;)V

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccountPrefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_log_out"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lgo7$a;->a:Lgo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic D0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->K0()V

    return-void
.end method

.method public final E0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-virtual {p1}, LOppOOO0/OppOp0;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/OptionItem;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_0
    iget p1, p1, Lcom/transsion/xuanniao/account/model/data/OptionItem;->optionType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->o0()V

    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$bool;->sdk_logout_is_force:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-virtual {p2, p1}, LOppOOO0/OppOp0;->d(Z)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final F0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v1, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-boolean v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->j:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd_note_msg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-static {p0, v0, v1}, Lck7;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lhk7$a;->a:Lhk7;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lhk7;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->base64Avatar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    new-instance v3, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$d;

    invoke-direct {v3, p0, p1, v0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$d;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;Lcom/transsion/xuanniao/account/model/data/AccountRes;Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;)V

    invoke-virtual {v1, p0, v2, v3}, Lhk7;->d(Landroid/content/Context;Ljava/lang/String;LOppOp00/a$a;)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->base64Avatar:Ljava/lang/String;

    invoke-static {v2}, LOppOp00/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    new-instance v3, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$e;

    invoke-direct {v3, p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$e;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    invoke-virtual {v1, p0, v2, v0, v3}, Lhk7;->c(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;LOppOp00/a$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->I0()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    sget v0, Lcom/transsion/xuanniao/account/R$id;->nickName:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget v0, Lcom/transsion/xuanniao/account/R$id;->accountId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "goPersonInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->F0()V

    :cond_5
    sget p1, Lcom/transsion/xuanniao/account/R$id;->infoLabel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object p2, p2, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    goto :goto_2

    :cond_6
    move p2, v0

    :goto_2
    const/16 v1, 0x8

    if-eqz p2, :cond_7

    sget p2, Lcom/transsion/xuanniao/account/R$drawable;->xn_red_point:I

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->perfectInfo:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->perfectInfo:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object p2, p1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_a

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    iget-object p2, p1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-boolean v4, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    if-nez v4, :cond_9

    move p1, v3

    goto :goto_5

    :cond_9
    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p1, -0x1

    :goto_5
    sget p2, Lcom/transsion/xuanniao/account/R$id;->safeCenter:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v4, Lcom/transsion/xuanniao/account/R$id;->perfectSafe:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v3, :cond_b

    sget p1, Lcom/transsion/xuanniao/account/R$drawable;->xn_red_point:I

    invoke-virtual {p2, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_b
    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v2, :cond_c

    sget p1, Lcom/transsion/xuanniao/account/R$drawable;->xn_red_point:I

    invoke-virtual {p2, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_set_safe:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public final G0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_user_center_action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_app_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->menu_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$bool;->sdk_logout_is_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lsjb;

    invoke-direct {v1, p0}, Lsjb;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final H0()V
    .locals 3

    sget v0, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_user_center:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    new-instance v0, LOppOOO0/OppOp0;

    invoke-direct {v0}, LOppOOO0/OppOp0;-><init>()V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iput-object p0, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->G0()V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->infoL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->safeCenterL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->privacyCenterL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Ljr7;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->privacyCenter:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_center:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    sget v1, Lcom/transsion/xuanniao/account/R$id;->accountId:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/o;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/q;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/q;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/transsion/xuanniao/account/center/view/o;-><init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lcom/transsion/xuanniao/account/center/view/o$c;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    iput-object v1, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    const-string v1, "update"

    invoke-virtual {v0, v1}, LOppOOO0/OppOp0;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->n:Z

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    invoke-static {p0}, Lho7;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->J0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final I0()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->xn_portrait_default:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final J0()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->p:Lho7;

    if-nez v0, :cond_0

    new-instance v0, Lho7;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$a;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$b;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$b;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lho7;-><init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->p:Lho7;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->p:Lho7;

    iget-object v0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_brand_upgrade_note:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_u_update:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v2, Lzk7;

    invoke-direct {v2, p0}, Lzk7;-><init>(Lho7;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->t(Landroid/content/DialogInterface$OnKeyListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v2, p0, Lho7;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lho7;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_1
    iget-object v2, p0, Lho7;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_logout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lho7;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lho7;->c:Landroid/widget/Button;

    iget-object v0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->note:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_account_update_tips:I

    const-string v4, "TECNO ID"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v0

    invoke-virtual {v0}, Ltl7;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lho7;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->agreementCheck:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcm7;

    invoke-direct {v1, p0}, Lcm7;-><init>(Lho7;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->agreement:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lho7;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_u_agreement:I

    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ler7;

    iget-object v6, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    new-instance v7, Lvm7;

    invoke-direct {v7, p0}, Lvm7;-><init>(Lho7;)V

    invoke-direct {v5, v6, v7}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v6, 0x21

    invoke-virtual {v3, v5, v4, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ler7;

    iget-object v4, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    new-instance v5, Lqn7;

    invoke-direct {v5, p0}, Lqn7;-><init>(Lho7;)V

    invoke-direct {v2, v4, v5}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v2, v0, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lho7;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lho7;->f:Landroid/widget/TextView;

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->privacyL:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lho7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final K0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_option_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->optionListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v3, Lxq7;

    iget-object v4, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-virtual {v4}, LOppOOO0/OppOp0;->f()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lxq7;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lujb;

    invoke-direct {v3, p0}, Lujb;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    new-instance v3, Landroid/widget/PopupWindow;

    sget v4, Lcom/transsion/xuanniao/account/R$style;->OsListPopupWindowStyle:I

    invoke-direct {v3, p0, v2, v1, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lc39;->a(F)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lolb;->l0()Z

    move-result v0

    const v1, 0x800005

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p0

    const/high16 v3, -0x3e800000    # -16.0f

    invoke-static {v3}, Lc39;->a(F)I

    move-result v3

    invoke-static {v2}, Lc39;->a(F)I

    move-result v2

    invoke-virtual {v0, p0, v3, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lc39;->a(F)I

    move-result v3

    invoke-static {v2}, Lc39;->a(F)I

    move-result v2

    invoke-virtual {v0, p0, v3, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public e0()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "key_tudc_relogin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->privacyNeedAgree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->l:Lmm7;

    if-nez v0, :cond_1

    new-instance v0, Lmm7;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$c;-><init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V

    invoke-direct {v0, p0, v1}, Lmm7;-><init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lmm7$d;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->l:Lmm7;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->l:Lmm7;

    invoke-virtual {p0}, Lmm7;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->e:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->q:Z

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->H0()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->f:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_2

    iput-boolean v2, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->n:Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x2329

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5

    if-ne p2, v1, :cond_a

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    if-eqz v0, :cond_a

    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v0, :cond_4

    iput-boolean v2, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    :cond_4
    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0, v0}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->F0()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->g:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->H0()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->h:I

    if-ne p1, v0, :cond_8

    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->B()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    if-eqz v0, :cond_a

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    iput-object v1, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->i:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    if-eqz v0, :cond_a

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    iput-object v1, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->j:I

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    if-eqz v0, :cond_a

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    iput-object v1, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V

    :cond_a
    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/xuanniao/account/center/view/o;->a(IILandroid/content/Intent;)V

    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "isReqLogin"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isFinish"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->e:I

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->q:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->H0()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/xuanniao/account/center/view/o;->b(I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "currentPhotoPath"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/xuanniao/account/center/view/o;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    :cond_1
    const-string v0, "outFile"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->e0()V

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->n:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->needRefresh(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-virtual {v0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, v0, LOppOOO0/OppOp0;->g:Lum7;

    if-nez v2, :cond_2

    new-instance v2, Lum7;

    invoke-direct {v2}, Lum7;-><init>()V

    iput-object v2, v0, LOppOOO0/OppOp0;->g:Lum7;

    :cond_2
    iget-object v2, v0, LOppOOO0/OppOp0;->g:Lum7;

    invoke-virtual {v0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v3

    new-instance v4, Lbs7;

    invoke-virtual {v0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v5

    const-class v6, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-direct {v4, v0, v5, v6}, Lbs7;-><init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Lum7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "AccountPrefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "is_logged_in"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    invoke-virtual {p0}, Lxj;->N1()V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/o;->a:Ljava/lang/String;

    const-string v1, "currentPhotoPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outFile"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->q:Z

    const-string v0, "isReqLogin"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public v()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    return-object p0
.end method
