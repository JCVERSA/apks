.class public final synthetic Lnib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnib;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnib;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->T0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;Ljava/util/List;)V

    return-void
.end method
