.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/Zq;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/Zq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

.field private static final synthetic vS:[Lcom/bytedance/adsdk/ugeno/yoga/Zq;


# instance fields
.field private final EjP:I

.field private final HiB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "static"

    .line 5
    .line 6
    const-string v3, "STATIC"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 12
    .line 13
    new-instance v2, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "relative"

    .line 17
    .line 18
    const-string v5, "RELATIVE"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v3, v4}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 24
    .line 25
    new-instance v4, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "absolute"

    .line 29
    .line 30
    const-string v7, "ABSOLUTE"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v5, v6}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    new-array v6, v6, [Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 39
    .line 40
    aput-object v0, v6, v1

    .line 41
    .line 42
    aput-object v2, v6, v3

    .line 43
    .line 44
    aput-object v4, v6, v5

    .line 45
    .line 46
    sput-object v6, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->vS:[Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->EjP:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->HiB:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "absolute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "relative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "static"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    .line 10
    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x35323192 -> :sswitch_2
        -0x210c0534 -> :sswitch_1
        0x67010d77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->vS:[Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/Zq;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->EjP:I

    return v0
.end method
