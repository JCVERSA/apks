.class public Lwq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lmr7;


# direct methods
.method public constructor <init>(Lmr7;)V
    .locals 0

    iput-object p1, p0, Lwq7;->b:Lmr7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lwq7;->b:Lmr7;

    iget-object p0, p0, Lmr7;->a:Landroid/app/Activity;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "noexit"

    invoke-virtual {p0, p1}, Lxj;->O(Ljava/lang/String;)V

    return-void
.end method
