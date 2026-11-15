.class public final synthetic Lkz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz0;->a:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lkz0;->a:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->f0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
