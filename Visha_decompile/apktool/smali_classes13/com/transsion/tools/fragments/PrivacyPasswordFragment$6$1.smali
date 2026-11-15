.class Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->d(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6$1;->this$1:Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6$1;->this$1:Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->T(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->b0(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Landroid/widget/TextView;)V

    return-void
.end method
