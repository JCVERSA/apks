.class public final synthetic Lcom/transsion/videofloat/manager/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ldf/a;


# instance fields
.field public final synthetic a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/videofloat/manager/x;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/videofloat/manager/x;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/videofloat/manager/x;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/x;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/videofloat/manager/x;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videofloat/manager/x;->c:Ljava/lang/String;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->o(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
