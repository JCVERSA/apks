.class public Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;


# instance fields
.field public N:Lrfc;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/view/View;

.field public Q:Landroid/widget/ImageView;

.field public R:Landroid/view/View;

.field public S:Landroid/view/View;

.field public T:Landroid/view/View;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/SeekBar;

.field public W:Landroid/widget/LinearLayout;

.field public X:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

.field public Y:Z

.field public Z:Z

.field public a0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->X:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->a0:Z

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic B0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lrfc;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Z:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->a0:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p0}, Lrfc;->k()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private H0(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Y:Z

    const/16 v2, 0x8

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->y0()V

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->T:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->S:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->I0(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->T:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->S:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->I0(Z)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->V:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->V:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "web_url"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->B0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->z0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic s0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->W:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Y:Z

    return p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->H0(I)V

    return-void
.end method

.method private y0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->T:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->no_network_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->T:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->btn_try:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->U:Landroid/widget/TextView;

    new-instance v1, Lofc;

    invoke-direct {v1, p0}, Lofc;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Y:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->T:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->V:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->V:Landroid/widget/SeekBar;

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public C0(Ljava/util/Map;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.transsion.sniffer_load.open_html_url"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "web_url"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public D0(ILjava/util/Map;)V
    .locals 1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->O:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "title"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->C0(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->E0(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final E0(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->W:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "showTitlebar"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTitleBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_VishaWebViewActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public F0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "dark="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(dark=[^&]*)"

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&dark="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?dark="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->urlReplaceLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final G0(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "showTitlebar"

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ldjb;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showTitleBar error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_VishaWebViewActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public final I0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->P:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->O:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Q:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->R:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrfc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->a0:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p0}, Lrfc;->k()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/playercommon/R$layout;->activity_text_web:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    sget p1, Lcom/transsion/playercommon/R$id;->fl_content_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/playercommon/R$id;->ll_title_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->W:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->O:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->P:Landroid/view/View;

    sget v0, Lcom/transsion/playercommon/R$id;->iv_logo_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Q:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->S:Landroid/view/View;

    sget v0, Lcom/transsion/playercommon/R$id;->sb_web:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->V:Landroid/widget/SeekBar;

    sget v0, Lcom/transsion/playercommon/R$id;->iv_close_web:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->R:Landroid/view/View;

    new-instance v1, Lmfc;

    invoke-direct {v1, p0}, Lmfc;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->H0(I)V

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->x0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->F0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "visha_VishaWebViewActivity"

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->P:Landroid/view/View;

    new-instance v2, Lnfc;

    invoke-direct {v2, p0}, Lnfc;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->v0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {v1, p0}, Lrfc;->q(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    iget-object v1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->w0()Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrfc;->p(Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, p1, v5, v1}, Lrfc;->c(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p1}, Lrfc;->j()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p1}, Lrfc;->j()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isDarkMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x1000000

    :goto_0
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_1
    new-instance p1, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V

    invoke-static {v3, p1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->G0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->W:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "visha_VishaWebViewActivity"

    invoke-static {v0}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrfc;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->H0(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-static {v0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p0}, Lrfc;->m()V

    :cond_0
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-static {v0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p0}, Lrfc;->n()V

    :cond_0
    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lrfc;->e(Ljava/lang/String;)Lrfc;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    return-void
.end method

.method public w0()Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "OBJECT_JSSCRIPT_INTERFACE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->X:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    :cond_0
    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->setVishaWebActivityWR(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V

    return-object v0
.end method

.method public final x0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic z0(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Y:Z

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lrfc;->j()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    invoke-virtual {p0}, Lrfc;->j()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return-void
.end method
