.class Lcom/transsion/tools/fragments/PasswordSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PasswordSettingFragment;->W(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/fragments/PasswordSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$2;->this$0:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$2;->this$0:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->U(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/TextView;)V

    return-void
.end method
