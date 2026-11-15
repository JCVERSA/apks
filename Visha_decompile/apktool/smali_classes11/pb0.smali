.class public final synthetic Lpb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BasePermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BasePermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb0;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lpb0;->b:Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->p0(Lcom/transsion/playercommon/activities/BasePermissionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
