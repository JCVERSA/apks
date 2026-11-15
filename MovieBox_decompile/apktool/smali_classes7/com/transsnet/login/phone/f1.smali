.class public final synthetic Lcom/transsnet/login/phone/f1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkk/a;

.field public final synthetic b:Lcom/transsnet/login/phone/LoginSetPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lkk/a;Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/login/phone/f1;->a:Lkk/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/login/phone/f1;->b:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/f1;->a:Lkk/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/login/phone/f1;->b:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->b0(Lkk/a;Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
