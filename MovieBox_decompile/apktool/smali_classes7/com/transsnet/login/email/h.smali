.class public final synthetic Lcom/transsnet/login/email/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lmx/b;

.field public final synthetic b:Lcom/transsnet/login/email/LoginEmailFragment;


# direct methods
.method public synthetic constructor <init>(Lmx/b;Lcom/transsnet/login/email/LoginEmailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/login/email/h;->a:Lmx/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/login/email/h;->b:Lcom/transsnet/login/email/LoginEmailFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/h;->a:Lmx/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/login/email/h;->b:Lcom/transsnet/login/email/LoginEmailFragment;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsnet/login/email/LoginEmailFragment;->b0(Lmx/b;Lcom/transsnet/login/email/LoginEmailFragment;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
