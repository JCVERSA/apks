.class public Lcom/transsion/tools/utils/UpdateDialogUtils$1;
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
.field public final synthetic b:Lcom/transsion/playercommon/data/CloudVersionControl;

.field public final synthetic c:Lcom/transsion/tools/utils/UpdateDialogUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/utils/UpdateDialogUtils;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1;->c:Lcom/transsion/tools/utils/UpdateDialogUtils;

    iput-object p2, p0, Lcom/transsion/tools/utils/UpdateDialogUtils$1;->b:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;

    invoke-direct {p1, p0}, Lcom/transsion/tools/utils/UpdateDialogUtils$1$1;-><init>(Lcom/transsion/tools/utils/UpdateDialogUtils$1;)V

    invoke-static {p1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method
