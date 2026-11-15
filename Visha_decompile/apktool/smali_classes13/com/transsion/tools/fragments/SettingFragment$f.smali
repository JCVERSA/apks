.class public Lcom/transsion/tools/fragments/SettingFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->showMobilePlayDialog()V
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

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$f;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/playercommon/core/MainApp;->j:Z

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$f;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->access$100(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "allow_mobile_data_play"

    invoke-static {p0, p2, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
