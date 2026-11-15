.class public Lto7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/ContactInput$a;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lto7;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lto7;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->q:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/center/view/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lto7;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->q:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/p;->e()V

    :cond_0
    return-void
.end method
