.class public Lcom/transsion/xuanniao/account/comm/widget/ContactInput$b;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/ContactInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/ContactInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$b;->d:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$b;->d:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->OppO0O0:Lcom/transsion/xuanniao/account/comm/widget/ContactInput$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$a;->a()V

    :cond_0
    return-void
.end method
