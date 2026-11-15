.class public final synthetic Lk8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;

.field public final synthetic c:Lcom/transsion/cloudcore/db/CloudTaskEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;

    iput-object p2, p0, Lk8b;->c:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lk8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;

    iget-object p0, p0, Lk8b;->c:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
