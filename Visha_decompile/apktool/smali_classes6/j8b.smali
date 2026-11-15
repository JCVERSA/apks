.class public final synthetic Lj8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloudcore/db/CloudTaskEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj8b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    check-cast p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->c(Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method
