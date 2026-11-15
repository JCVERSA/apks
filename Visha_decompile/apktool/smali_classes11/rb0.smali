.class public final synthetic Lrb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BasePermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BasePermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb0;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lrb0;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->t0(Lcom/transsion/playercommon/activities/BasePermissionActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
