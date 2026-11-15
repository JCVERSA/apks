.class public Lgr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/e;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lgr7;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lgr7;->b:Landroid/content/Context;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "cancel"

    invoke-virtual {p0, p1}, Lxj;->B0(Ljava/lang/String;)V

    return-void
.end method
