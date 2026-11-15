.class public final synthetic Lq8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    iput-boolean p2, p0, Lq8b;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    iget-boolean p0, p0, Lq8b;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V

    return-void
.end method
