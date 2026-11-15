.class public Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity$a;
.super Landroid/view/ContextThemeWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Landroid/content/Context;ILandroid/content/res/Configuration;)V
    .locals 0

    iput-object p4, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity$a;->a:Landroid/content/res/Configuration;

    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity$a;->a:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method
