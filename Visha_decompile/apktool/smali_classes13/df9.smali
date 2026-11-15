.class public final synthetic Ldf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf9;->b:Lcom/transsion/tools/fragments/SettingFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Ldf9;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->P(Lcom/transsion/tools/fragments/SettingFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
