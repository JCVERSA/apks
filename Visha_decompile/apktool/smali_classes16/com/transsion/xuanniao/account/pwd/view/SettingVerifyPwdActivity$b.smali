.class public Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$b;->b:Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$b;->b:Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->k:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object p0, Lgo7$a;->a:Lgo7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
