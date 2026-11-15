.class Lcom/transsion/tools/fragments/EmailVerifyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailVerifyFragment;->c0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$1;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$1;->this$0:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->R(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->Y(Lcom/transsion/tools/fragments/EmailVerifyFragment;Landroid/widget/TextView;)V

    return-void
.end method
