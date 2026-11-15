.class public Lcom/transsion/tools/utils/UpdateDialogUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/utils/UpdateDialogUtils;->b(Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/playercommon/data/CloudVersionControl;

.field public final synthetic d:Lcom/transsion/tools/utils/UpdateDialogUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/utils/UpdateDialogUtils;Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->d:Lcom/transsion/tools/utils/UpdateDialogUtils;

    iput-object p2, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->c:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lge;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pkg feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UpdateDialogUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->p(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->c:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "popup_version_y_cl"

    invoke-static {p1, p2, v0}, Lp06;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->d:Lcom/transsion/tools/utils/UpdateDialogUtils;

    invoke-static {p1}, Lcom/transsion/tools/utils/UpdateDialogUtils;->a(Lcom/transsion/tools/utils/UpdateDialogUtils;)Lcom/transsion/tools/utils/UpdateDialogUtils$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$a;->d:Lcom/transsion/tools/utils/UpdateDialogUtils;

    invoke-static {p0}, Lcom/transsion/tools/utils/UpdateDialogUtils;->a(Lcom/transsion/tools/utils/UpdateDialogUtils;)Lcom/transsion/tools/utils/UpdateDialogUtils$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/tools/utils/UpdateDialogUtils$b;->finish()V

    :cond_1
    return-void
.end method
