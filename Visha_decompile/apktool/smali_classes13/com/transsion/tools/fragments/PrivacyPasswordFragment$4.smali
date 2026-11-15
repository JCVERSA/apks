.class Lcom/transsion/tools/fragments/PrivacyPasswordFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->c0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$4;->this$0:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$4;->this$0:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->T(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Landroid/widget/EditText;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
