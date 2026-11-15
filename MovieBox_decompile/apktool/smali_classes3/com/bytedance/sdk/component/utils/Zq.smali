.class public Lcom/bytedance/sdk/component/utils/Zq;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Sj:Z = false

.field private static TKC:Ljava/lang/String; = ""

.field private static sP:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static EjP()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/Zq;->Sj:Z

    .line 2
    .line 3
    return v0
.end method

.method public static Sj(I)V
    .locals 0

    .line 2
    sput p0, Lcom/bytedance/sdk/component/utils/Zq;->sP:I

    return-void
.end method

.method public static Sj(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/component/utils/Zq;->TKC:Ljava/lang/String;

    return-void
.end method

.method public static Sj()Z
    .locals 2

    .line 3
    sget v0, Lcom/bytedance/sdk/component/utils/Zq;->sP:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static TKC()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/component/utils/Zq;->Sj:Z

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Zq;->Sj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static sP()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/component/utils/Zq;->Sj:Z

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Zq;->Sj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
