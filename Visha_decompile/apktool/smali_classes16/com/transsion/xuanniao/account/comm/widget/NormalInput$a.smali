.class public Lcom/transsion/xuanniao/account/comm/widget/NormalInput$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/NormalInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/NormalInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NormalInput$a;->b:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NormalInput$a;->b:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NormalInput$a;->b:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
