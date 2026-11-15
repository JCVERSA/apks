.class public final Lcom/yandex/mobile/ads/impl/fy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fy;)Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    return-object p0
.end method

.method private static final a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final a(Lc74;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/fy;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    sget v0, Lcom/yandex/mobile/ads/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lgfd;

    invoke-direct {v0}, Lgfd;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Lc74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc74;",
            ")V"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    sget v0, Lcom/yandex/mobile/ads/R$string;->yes:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lhfd;

    invoke-direct {v0, p3}, Lhfd;-><init>(Lc74;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    sget p2, Lcom/yandex/mobile/ads/R$string;->no:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lifd;

    invoke-direct {p2}, Lifd;-><init>()V

    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final b(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/fy;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lc74;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fy;->a(Lc74;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/fy;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ey;)V
    .locals 3

    .line 5
    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ey$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ey$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ey$c;->a()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ey$e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ey$e;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ey$e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ey$d;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/yandex/mobile/ads/impl/ey$d;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ey$d;->a()Landroid/net/Uri;

    move-result-object p1

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    const-string p1, "text/plain"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ey$b;

    if-eqz v0, :cond_3

    .line 16
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    sget v0, Lcom/yandex/mobile/ads/R$string;->logging_is_disabled:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    sget v2, Lcom/yandex/mobile/ads/R$string;->do_you_want_to_enable_logging:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/impl/fy$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/fy$a;-><init>(Lcom/yandex/mobile/ads/impl/fy;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fy;->a(Ljava/lang/String;Ljava/lang/String;Lc74;)V

    goto :goto_0

    .line 19
    :cond_3
    instance-of p1, p1, Lcom/yandex/mobile/ads/impl/ey$a;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_4
    :goto_0
    return-void
.end method
