.class public Las7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/j;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/j;)V
    .locals 0

    iput-object p1, p0, Las7;->b:Lcom/transsion/xuanniao/account/center/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Las7;->b:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
