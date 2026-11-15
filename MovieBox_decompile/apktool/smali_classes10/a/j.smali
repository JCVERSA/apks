.class public final La/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:La/b;

.field public final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;La/b;Landroid/app/AlertDialog;)V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/j;->a:Landroid/app/Activity;

    iput-object p2, p0, La/j;->b:La/b;

    iput-object p3, p0, La/j;->c:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 446
    iget-object p1, p0, La/j;->b:La/b;

    iget-object v0, p1, La/b;->g:Ljava/lang/String;

    .line 270
    iget-object v1, p0, La/j;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, La/k;->e(Landroid/app/Activity;Ljava/lang/String;)V

    .line 447
    iget-boolean p1, p1, La/b;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, La/j;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
