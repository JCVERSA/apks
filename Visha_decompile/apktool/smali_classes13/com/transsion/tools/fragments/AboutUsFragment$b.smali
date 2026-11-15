.class public Lcom/transsion/tools/fragments/AboutUsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/AboutUsFragment;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:Lcom/transsion/tools/fragments/AboutUsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/AboutUsFragment;[I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->b:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-static {p1, p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->W(Lcom/transsion/tools/fragments/AboutUsFragment;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->b:[I

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->V(Lcom/transsion/tools/fragments/AboutUsFragment;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->b:[I

    const/4 v1, 0x2

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->X(Lcom/transsion/tools/fragments/AboutUsFragment;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->b:[I

    const/4 v1, 0x3

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->Y(Lcom/transsion/tools/fragments/AboutUsFragment;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/AboutUsFragment;->d0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->S(Lcom/transsion/tools/fragments/AboutUsFragment;)I

    move-result p2

    const-string v1, "environment_mode"

    invoke-static {p1, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/AboutUsFragment;->e0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->R(Lcom/transsion/tools/fragments/AboutUsFragment;)I

    move-result p2

    const-string v1, "area_mode"

    invoke-static {p1, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/AboutUsFragment;->f0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->T(Lcom/transsion/tools/fragments/AboutUsFragment;)I

    move-result p2

    const-string v1, "gslb_mode"

    invoke-static {p1, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/AboutUsFragment;->g0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p2}, Lcom/transsion/tools/fragments/AboutUsFragment;->U(Lcom/transsion/tools/fragments/AboutUsFragment;)I

    move-result p2

    const-string v1, "push_env_mode"

    invoke-static {p1, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/AboutUsFragment;->h0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Exit now to change Dev Config"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$b;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/AboutUsFragment;->i0()V

    return-void
.end method
