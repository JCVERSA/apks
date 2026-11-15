.class public final synthetic Lh23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh23;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lh23;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->R0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Ljava/lang/Boolean;)V

    return-void
.end method
