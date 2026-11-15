.class public final synthetic Li8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;

    iput-wide p2, p0, Li8b;->c:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li8b;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;

    iget-wide v1, p0, Li8b;->c:D

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->e(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;D)V

    return-void
.end method
