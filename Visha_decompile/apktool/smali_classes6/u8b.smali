.class public final synthetic Lu8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    iput-object p2, p0, Lu8b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lu8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    iget-object p0, p0, Lu8b;->c:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
