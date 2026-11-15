.class public final Lcom/transsion/transfer/wifi/permission/PermissionsActivity$b;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/permission/PermissionsActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/permission/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/permission/PermissionsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsActivity$b;->a:Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsActivity$b;->a:Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsActivity;->D0(Lcom/transsion/transfer/wifi/permission/PermissionsActivity;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/permission/d;->g(Ljava/util/List;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsActivity$b;->a:Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsActivity$b;->a:Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsActivity$b;->a:Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
