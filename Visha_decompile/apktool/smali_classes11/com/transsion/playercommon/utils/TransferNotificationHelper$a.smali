.class public Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/TransferNotificationHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/TransferNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->downloading_status:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(II)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->download_finish_notify:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->download:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->download_channel_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$a;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->downloaded_channel_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
