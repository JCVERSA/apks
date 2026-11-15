.class public final synthetic Ldkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/membership/UserCenterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkb;->a:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldkb;->a:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->r0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    return-void
.end method
