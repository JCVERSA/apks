.class public Lcom/transsion/tools/fragments/SettingFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->showStreamPlayDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$c;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$c;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->V(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/widget/Switch;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 p0, 0x3

    invoke-static {p0}, Lz06;->c(I)V

    return-void
.end method
