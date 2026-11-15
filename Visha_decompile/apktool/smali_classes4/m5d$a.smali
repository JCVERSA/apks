.class public Lm5d$a;
.super Lcom/mgmi/ViewGroup/a/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/ads/api/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/mgmi/ViewGroup/a/a;

.field public final synthetic g:Lcom/mgmi/ads/api/e;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lm5d;


# direct methods
.method public constructor <init>(Lm5d;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ads/api/e;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lm5d$a;->j:Lm5d;

    iput-object p3, p0, Lm5d$a;->f:Lcom/mgmi/ViewGroup/a/a;

    iput-object p4, p0, Lm5d$a;->g:Lcom/mgmi/ads/api/e;

    iput-object p5, p0, Lm5d$a;->h:Landroid/content/Context;

    iput-object p6, p0, Lm5d$a;->i:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mgmi/ViewGroup/a/a$b;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/ViewGroup/a/a$b;->a()V

    iget-object v0, p0, Lm5d$a;->f:Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lm5d$a;->g:Lcom/mgmi/ads/api/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/e;->b()V

    :cond_0
    iget-object v0, p0, Lm5d$a;->h:Landroid/content/Context;

    iget-object p0, p0, Lm5d$a;->i:Ljava/lang/String;

    invoke-static {v0, p0}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/ViewGroup/a/a$b;->b()V

    iget-object v0, p0, Lm5d$a;->f:Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lm5d$a;->g:Lcom/mgmi/ads/api/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/e;->a()V

    :cond_0
    return-void
.end method
