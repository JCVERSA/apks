.class public Lcom/transsion/push/utils/PushLogUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static LOG:Lcom/transsion/core/log/ObjectLogUtils; = null

.field public static final TAG:Ljava/lang/String; = "PUSH_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PUSH_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
