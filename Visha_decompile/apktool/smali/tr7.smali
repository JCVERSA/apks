.class public Ltr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/h;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/h;)V
    .locals 0

    iput-object p1, p0, Ltr7;->b:Lcom/transsion/xuanniao/account/center/view/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ltr7;->b:Lcom/transsion/xuanniao/account/center/view/h;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "cancel"

    invoke-virtual {p0, p1}, Lxj;->I0(Ljava/lang/String;)V

    return-void
.end method
