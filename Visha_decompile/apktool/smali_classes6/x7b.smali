.class public final synthetic Lx7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7b;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lx7b;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->h0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/util/List;)V

    return-void
.end method
