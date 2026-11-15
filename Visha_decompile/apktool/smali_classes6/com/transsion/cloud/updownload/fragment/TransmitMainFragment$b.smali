.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$b;
.super Lhf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->inflateOperationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$b;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0, p2}, Lhf7;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$b;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->y0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;I)V

    :cond_0
    return-void
.end method
