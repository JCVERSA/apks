.class Lcom/hisavana/mediation/config/CloudControlConfigSync$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const v0, 0x11171

    .line 2
    .line 3
    .line 4
    const-string v1, "The cloud control reaches 15s timeout"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
