.class public Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$a;->b:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$a;->b:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;->a()V

    :cond_0
    return-void
.end method
