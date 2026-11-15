.class public Lcom/transsion/tools/activities/NewFeatureActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final N:I

.field public O:Li07;

.field public P:Landroid/widget/FrameLayout;

.field public Q:Landroid/widget/ImageView;

.field public R:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->N:I

    return-void
.end method

.method private B0()V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->fl_content_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->P:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final C0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->P:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tools/activities/NewFeatureActivity;->D0()V

    return-void
.end method

.method public final D0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->O:Li07;

    if-nez v0, :cond_0

    new-instance v0, Li07;

    invoke-direct {v0, p0}, Li07;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->O:Li07;

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->O:Li07;

    iget-object v1, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Li07;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/tools/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->Q:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v1, Lcom/transsion/tools/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final E0()V
    .locals 1

    const-string v0, "vd_hide_popup_close"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    return-void
.end method

.method public final F0()Z
    .locals 4

    const-string v0, "vd_hide_popup_ok"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcac;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lt08;->a(Landroid/app/Activity;)V

    return v2

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-static {p0, v2, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoom(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x84

    invoke-static {p0, v0, v1}, Lt08;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v2
.end method

.method public final G0(IZ)V
    .locals 3

    const/16 v0, 0x83

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    invoke-static {}, Lcac;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoom(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x84

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p0, v2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoom(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/NewFeatureActivity;->E0()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->btn_confirm:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/activities/NewFeatureActivity;->F0()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activcity_new_feature:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/tools/activities/NewFeatureActivity;->B0()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/NewFeatureActivity;->C0()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/tools/activities/NewFeatureActivity;->O:Li07;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lh07;->a()V

    :cond_0
    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/NewFeatureActivity;->G0(IZ)V

    return-void
.end method
