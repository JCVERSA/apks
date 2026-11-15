.class public final synthetic Lxsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxsd;->b:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    iput-object p2, p0, Lxsd;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxsd;->b:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    iget-object p0, p0, Lxsd;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Latd;->c(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Landroid/content/Context;)V

    return-void
.end method
