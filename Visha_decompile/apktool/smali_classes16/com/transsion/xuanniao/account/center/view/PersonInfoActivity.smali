.class public Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Ljq7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public e:I

.field public f:LOppOOO0/OppOOp0;

.field public g:Lcom/transsion/xuanniao/account/center/view/a;

.field public h:Lcom/transsion/xuanniao/account/center/view/o;

.field public i:Landroid/widget/TextView;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->j:Z

    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_not_filled_in:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final C0()V
    .locals 5

    sget v0, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_person_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    new-instance v0, LOppOOO0/OppOOp0;

    invoke-direct {v0}, LOppOOO0/OppOOp0;-><init>()V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iput-object p0, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    iget-boolean v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOppOOO0/OppOOp0;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    iput-object v1, v0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->state:Ljava/lang/String;

    iput-object v2, v0, LOppOOO0/OppOOp0;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Ljq7;

    invoke-interface {v0, v1}, Ljq7;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->l()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_person_info:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/o;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/m;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/m;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/transsion/xuanniao/account/center/view/o;-><init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lcom/transsion/xuanniao/account/center/view/o$c;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->nicknameL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->usernameL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->fullNameL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->genderL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->birthdayL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->regionL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->addressL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->signatureL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->address:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->i:Landroid/widget/TextView;

    invoke-static {}, Lfkb;->b()Lfkb;

    move-result-object v0

    invoke-virtual {v0}, Lfkb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_not_filled_in:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lfkb;->b()Lfkb;

    move-result-object v0

    invoke-virtual {v0}, Lfkb;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v1, v1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-static {v1}, Lsm7;->e(Lcom/transsion/xuanniao/account/model/data/AccountRes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxj;->P0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    new-instance v0, Lon7;

    invoke-direct {v0}, Lon7;-><init>()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v2, Lxr7;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v2, p0, v3, v4}, Lxr7;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_0
    sget v3, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v2, v3

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_3
    move-object v2, v1

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_4
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_6
    throw p0

    :cond_2
    :goto_7
    new-instance v3, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$b;

    invoke-direct {v3, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$b;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lhk7;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/OriPicture/avatar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, LOppOp00/OppO0Op;

    invoke-direct {v6, v0, p1, v4, v3}, LOppOp00/OppO0Op;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;LOppOp00/a$a;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->u()V

    :cond_5
    :goto_8
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object p1, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_6

    iput-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->base64Avatar:Ljava/lang/String;

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0, p1}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_6
    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->g:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public S(Ljava/util/ArrayList;)V
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iget-boolean v1, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->defaultFlag:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/transsion/xuanniao/account/R$id;->address:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_address_num:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->label:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_address_default_set:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_address_default:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->label:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->i:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_not_filled_in:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public a0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->g:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v1, v1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/transsion/xuanniao/account/center/view/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->g:Lcom/transsion/xuanniao/account/center/view/a;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setError(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->j:Z

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p0, p1}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->countryCode:Ljava/lang/String;

    iput-object v2, v1, LOppOOO0/OppOOp0;->i:Ljava/lang/String;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lhk7$a;->a:Lhk7;

    iget-object v3, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lhk7;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    new-instance v4, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;

    invoke-direct {v4, p0, p1, v1}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;Lcom/transsion/xuanniao/account/model/data/AccountRes;Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;)V

    invoke-virtual {v2, p0, v3, v4}, Lhk7;->d(Landroid/content/Context;Ljava/lang/String;LOppOp00/a$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v4, Lcom/transsion/xuanniao/account/R$drawable;->xn_portrait_default:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    sget v1, Lcom/transsion/xuanniao/account/R$id;->nickName:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->username:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->fullName:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->fullName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->gender:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {v2}, LOppOOO0/OppOOp0;->h()I

    move-result v2

    if-ne v2, v0, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_man:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->h()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_female:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_secrecy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->birthday:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->birthday:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_not_filled_in:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    sget v0, Lcom/transsion/xuanniao/account/R$id;->region:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->state:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->address:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->signature:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->signature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object p1, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_7

    iget p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->usernameModifyRemainTimes:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    sget p1, Lcom/transsion/xuanniao/account/R$id;->usernameArrow:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    :goto_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->e:I

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->C0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "key_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_cc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_name_en"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "state"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryCode"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryName"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v4, v2}, LOppOOO0/OppOOp0;->e(Ljava/util/HashMap;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxj;->z1(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    if-eqz v0, :cond_3

    const-string v2, "addresses"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, LOppOOO0/OppOOp0;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v0, v0, LOppOOO0/OppOOp0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->S(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/xuanniao/account/center/view/o;->a(IILandroid/content/Intent;)V

    :cond_4
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

    if-nez v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isFinish"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "isDataReady"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->j:Z

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->C0()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v1, v1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-static {v1}, Lsm7;->e(Lcom/transsion/xuanniao/account/model/data/AccountRes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxj;->N(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

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

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lfkb;->b()Lfkb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfkb;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/xuanniao/account/center/view/o;->b(I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isDataReady"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->j:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz v0, :cond_2

    const-string v0, "currentPhotoPath"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

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

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

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

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->j:Z

    const-string v1, "isDataReady"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/o;->a:Ljava/lang/String;

    const-string v1, "currentPhotoPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "outFile"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v2, v1, LOppOOO0/OppOOp0;->g:Ljava/lang/String;

    iget-object v1, v1, LOppOOO0/OppOOp0;->k:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v2, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCode(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lxj;->z1(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

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

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    return-object p0
.end method
