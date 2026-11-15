.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$d;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$d;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->h()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;ZZ)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
