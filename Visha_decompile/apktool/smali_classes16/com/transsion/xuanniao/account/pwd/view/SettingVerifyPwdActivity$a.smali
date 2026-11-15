.class public Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$a;->b:Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$a;->b:Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
