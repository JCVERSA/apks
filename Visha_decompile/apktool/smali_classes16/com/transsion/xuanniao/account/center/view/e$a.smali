.class public Lcom/transsion/xuanniao/account/center/view/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/e;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/e$a;->b:Lcom/transsion/xuanniao/account/center/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget p1, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/e$a;->b:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/e;->e:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/e;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
