.class public Lcom/transsion/tools/fragments/ToolsFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/ToolsFragment;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/ToolsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$d;->b:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->x(Z)V

    return-void
.end method
