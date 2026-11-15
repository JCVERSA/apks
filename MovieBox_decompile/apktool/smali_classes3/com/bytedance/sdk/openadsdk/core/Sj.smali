.class public final Lcom/bytedance/sdk/openadsdk/core/Sj;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final Sj:Ljava/lang/String;

.field private static final sP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Sj;->TKC()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Sj;->Sj:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Sj;->sP:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static Sj()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private static TKC()Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [C

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    const/16 v2, 0x17

    .line 11
    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ltz v3, :cond_0

    .line 14
    .line 15
    rsub-int/lit8 v4, v3, 0x17

    .line 16
    .line 17
    aget-char v5, v1, v3

    .line 18
    .line 19
    xor-int/lit16 v5, v5, 0xff

    .line 20
    .line 21
    int-to-char v5, v5

    .line 22
    aput-char v5, v0, v4

    .line 23
    .line 24
    add-int/lit8 v3, v3, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :array_0
    .array-data 2
        0xcbs
        0xb6s
        0xa8s
        0xb0s
        0xcfs
        0x94s
        0x95s
        0xb2s
        0xcds
        0xb6s
        0x95s
        0xa6s
        0x86s
        0xb2s
        0xb8s
        0xb0s
        0xces
        0xaes
        0xbbs
        0xb2s
        0x96s
        0xb9s
        0xa7s
        0xa6s
    .end array-data
.end method

.method public static sP()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Sj;->sP:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
