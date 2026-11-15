.class public Lzq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzq7;->c:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iput-object p2, p0, Lzq7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lzq7;->c:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p0, p0, Lzq7;->b:Ljava/lang/String;

    const-string p2, "cancel"

    invoke-virtual {p1, p2, p0}, Lxj;->h0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
