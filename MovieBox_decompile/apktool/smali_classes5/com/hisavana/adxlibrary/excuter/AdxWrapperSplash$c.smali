.class public final Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/api/listener/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;->a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AdxWrapperSplash"

    .line 6
    .line 7
    const-string v2, "AdxWrapperSplash --> onTimeEnd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;->a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdSkipListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/OnSkipListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/OnSkipListener;->onTimeReach()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AdxWrapperSplash"

    .line 6
    .line 7
    const-string v2, "AdxWrapperSplash --> onClick"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;->a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdSkipListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/OnSkipListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/OnSkipListener;->onClick()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
