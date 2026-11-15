.class public Lcom/transsion/sniffer_load/WebActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgp3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebActivity;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$d;->a:Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaviconReceived\uff0cfavicon width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_WebActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity$d;->a:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {v0, p1}, Lcom/transsion/sniffer_load/WebActivity;->H0(Lcom/transsion/sniffer_load/WebActivity;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity$d;->a:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebActivity;->J0(Lcom/transsion/sniffer_load/WebActivity;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string p0, "onFaviconFailed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_WebActivity"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
