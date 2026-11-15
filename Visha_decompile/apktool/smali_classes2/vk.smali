.class public final Lvk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lvk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvk;

    invoke-direct {v0}, Lvk;-><init>()V

    sput-object v0, Lvk;->a:Lvk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$bundle1"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lvk;->a:Lvk;

    invoke-virtual {v0, p0}, Lvk;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "terminal_type"

    const-string v1, "sdk"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_channel_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lwj;

    const/16 v1, 0x1f00

    invoke-direct {v0, p1, v1}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public static final D(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "$bundle"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminal_type"

    const-string v1, "sdk"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_channel_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lwj;

    const-string/jumbo v1, "upgrade_common_exposure"

    const/16 v2, 0x1f00

    invoke-direct {v0, v1, v2}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public static final E(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V
    .locals 6

    const-string v0, "$pageName"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lvk;->a:Lvk;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lvk;->n(Lvk;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "action"

    const-string v5, "exposure"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "page"

    invoke-virtual {v3, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo p0, "upgrade_version"

    invoke-virtual {v3, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_2

    :goto_1
    move v1, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    const-string/jumbo v4, "upgrade_type"

    if-eqz v1, :cond_4

    const-string v1, "force"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v1, "optional"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez p1, :cond_5

    :goto_4
    move p1, p0

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/AppScoreContent;->getShowAfterUpdate()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    const-string/jumbo v1, "show_after_update"

    if-eqz p1, :cond_7

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_6
    invoke-virtual {v0, v3}, Lvk;->B(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page"

    const-string v2, "score"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "score_click"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "button_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "action_url"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lvk;->a:Lvk;

    invoke-virtual {p0, v0}, Lvk;->p(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "headers"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lvk;->a:Lvk;

    const-string/jumbo p1, "update_request"

    invoke-virtual {p0, p1, v0}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final K(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "response_state"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "response_code"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "response_message"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lvk;->a:Lvk;

    const-string/jumbo p1, "update_request_result"

    invoke-virtual {p0, p1, v0}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page"

    const-string/jumbo v2, "upgrade"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    const-string/jumbo v2, "upgrade_click"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "button_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "action_url"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lvk;->a:Lvk;

    invoke-virtual {p0, v0}, Lvk;->p(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lvk;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lvk;->G(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lvk;->K(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lvk;->M(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lvk;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lvk;->u()V

    return-void
.end method

.method public static synthetic g(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lvk;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lvk;->s(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lvk;->E(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V

    return-void
.end method

.method public static synthetic j(I)V
    .locals 0

    invoke-static {p0}, Lvk;->y(I)V

    return-void
.end method

.method public static synthetic k(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lvk;->D(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic l(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lvk;->A(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lvk;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lvk;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "$bundle1"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lvk;->a:Lvk;

    invoke-virtual {v0, p0}, Lvk;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "terminal_type"

    const-string v1, "sdk"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_channel_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lwj;

    const-string/jumbo v1, "upgrade_common_click"

    const/16 v2, 0x1f00

    invoke-direct {v0, v1, v2}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public static final s(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "$pageName"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ignore_type"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lvk;->a:Lvk;

    invoke-virtual {p0, v0}, Lvk;->p(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final u()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "install_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lvk;->a:Lvk;

    invoke-virtual {v1, v2, v0}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_version"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "update_version"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lvk;->a:Lvk;

    const-string p1, "need_update"

    invoke-virtual {p0, p1, v0}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final y(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "reason_code"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lvk;->a:Lvk;

    const-string v1, "no_show_dialog_reason"

    invoke-virtual {p0, v1, v0}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final B(Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Ltk;

    invoke-direct {v0, p1}, Ltk;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V
    .locals 1

    const-string p0, "pageName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lrk;

    invoke-direct {v0, p1, p2}, Lrk;-><init>(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lkk;

    invoke-direct {v0, p1, p2}, Lkk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lnk;

    invoke-direct {v0, p1, p2}, Lnk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lmk;

    invoke-direct {v0, p1, p2, p3}, Lmk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Luk;

    invoke-direct {v0, p1, p2}, Luk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    sget-object p0, Lqa1;->a:Lqa1;

    invoke-virtual {p0}, Lqa1;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-virtual {p0}, Lqa1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "brand"

    invoke-virtual {p0}, Lqa1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_version"

    invoke-virtual {p0}, Lqa1;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    invoke-virtual {v0}, Lcom/cloud/tupdate/TUpdate$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqa1;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "app_version"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final o(Landroid/content/Context;Z)V
    .locals 2

    const/16 p0, 0x1f00

    const/4 v0, 0x0

    const-string/jumbo v1, "upgradeSdk"

    invoke-static {p1, v1, p0, p2, v0}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    invoke-static {p2}, Lcom/transsion/ga/AthenaAnalytics;->a0(Z)V

    invoke-static {p2}, Lcom/transsion/ga/AthenaAnalytics;->Z(Z)V

    return-void
.end method

.method public final p(Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Llk;

    invoke-direct {v0, p1}, Llk;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string p0, "pageName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lsk;

    invoke-direct {v0, p1, p2, p3}, Lsk;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t()V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lqk;

    invoke-direct {v0}, Lqk;-><init>()V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lok;

    invoke-direct {v0, p1, p2}, Lok;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(I)V
    .locals 1

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Lpk;

    invoke-direct {v0, p1}, Lpk;-><init>(I)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "eventName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bundle1"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lhk;->a:Lhk;

    new-instance v0, Ljk;

    invoke-direct {v0, p2, p1}, Ljk;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhk;->d(Ljava/lang/Runnable;)V

    return-void
.end method
