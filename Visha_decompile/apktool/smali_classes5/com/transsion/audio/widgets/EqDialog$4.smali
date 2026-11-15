.class Lcom/transsion/audio/widgets/EqDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/EqDialog;->showListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/EqDialog;

.field final synthetic val$array:[Ljava/lang/CharSequence;

.field final synthetic val$def:S


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/EqDialog;[Ljava/lang/CharSequence;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$4;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    iput-object p2, p0, Lcom/transsion/audio/widgets/EqDialog$4;->val$array:[Ljava/lang/CharSequence;

    iput-short p3, p0, Lcom/transsion/audio/widgets/EqDialog$4;->val$def:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$4;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->n0(Lcom/transsion/audio/widgets/EqDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/widgets/EqDialog$4;->val$array:[Ljava/lang/CharSequence;

    iget-short v0, p0, Lcom/transsion/audio/widgets/EqDialog$4;->val$def:S

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-short p0, p0, Lcom/transsion/audio/widgets/EqDialog$4;->val$def:S

    invoke-static {p0}, Llc3;->n(S)V

    return-void
.end method
