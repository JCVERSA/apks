.class Lcom/transsion/tools/fragments/EmailSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailSettingFragment;->X(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/fragments/EmailSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$1;->this$0:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$1;->this$0:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->P(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->S(Lcom/transsion/tools/fragments/EmailSettingFragment;Landroid/widget/TextView;)V

    return-void
.end method
