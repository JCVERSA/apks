.class public Le6b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6b$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Le6b$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le6b$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6b;->a:Landroid/content/Context;

    iput-object p2, p0, Le6b;->b:Le6b$c;

    return-void
.end method

.method public static bridge synthetic a(Le6b;)Le6b$c;
    .locals 0

    iget-object p0, p0, Le6b;->b:Le6b$c;

    return-object p0
.end method


# virtual methods
.method public b(Z)V
    .locals 3

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    sget p1, Lcom/transsion/sniffer_load/R$string;->net_not_connect:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Le6b;->b:Le6b$c;

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Le6b$c;->a(Z)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Le6b;->b:Le6b$c;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2}, Le6b$c;->a(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le6b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Le6b;->c(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Le6b;->b:Le6b$c;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2}, Le6b$c;->a(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final c(Landroid/content/Context;Z)V
    .locals 2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p2, :cond_0

    sget p1, Lcom/transsion/playercommon/R$string;->visha_non_wifi_upload_warning:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$string;->tablet_visha_non_wifi_download_warning:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->visha_non_wifi_download_warning:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v0, Le6b$b;

    invoke-direct {v0, p0}, Le6b$b;-><init>(Le6b;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$string;->ok:I

    new-instance v0, Le6b$a;

    invoke-direct {v0, p0}, Le6b$a;-><init>(Le6b;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    :cond_2
    return-void
.end method
