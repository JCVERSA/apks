.class public final Lcom/transsion/api/gateway/GateWaySdk$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "appid"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
