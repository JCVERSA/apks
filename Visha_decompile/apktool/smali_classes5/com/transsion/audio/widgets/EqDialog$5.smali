.class Lcom/transsion/audio/widgets/EqDialog$5;
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


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/EqDialog;[Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$5;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    iput-object p2, p0, Lcom/transsion/audio/widgets/EqDialog$5;->val$array:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$5;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->n0(Lcom/transsion/audio/widgets/EqDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$5;->val$array:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-short p0, p2

    invoke-static {p0}, Llc3;->n(S)V

    return-void
.end method
