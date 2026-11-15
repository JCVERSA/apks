.class public Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->U(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment$a;->b:Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    invoke-static {}, Le16;->q()V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment$a;->b:Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;

    iget-object v0, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment$a;->b:Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->h0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "onPageSelected exception"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ScanActivity"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
