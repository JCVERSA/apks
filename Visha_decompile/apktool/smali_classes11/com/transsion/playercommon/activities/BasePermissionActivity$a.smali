.class public Lcom/transsion/playercommon/activities/BasePermissionActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/BasePermissionActivity;->showRequestPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BasePermissionActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/BasePermissionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity$a;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity$a;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isRestrictPermissionGuideShow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity$a;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    const-string p1, "file_permission_show"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity$a;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
