.class public final synthetic Ls8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8b;->a:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ls8b;->a:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->g0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/lang/Boolean;)V

    return-void
.end method
