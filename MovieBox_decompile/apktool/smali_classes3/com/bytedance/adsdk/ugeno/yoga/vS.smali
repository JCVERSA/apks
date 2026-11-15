.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/vS;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/vS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

.field private static final synthetic Jcg:[Lcom/bytedance/adsdk/ugeno/yoga/vS;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/vS;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/vS;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/vS;


# instance fields
.field private final HiB:I

.field private final vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "column"

    .line 5
    .line 6
    const-string v3, "COLUMN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/vS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 12
    .line 13
    new-instance v2, Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "column_reverse"

    .line 17
    .line 18
    const-string v5, "COLUMN_REVERSE"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v3, v4}, Lcom/bytedance/adsdk/ugeno/yoga/vS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/bytedance/adsdk/ugeno/yoga/vS;->sP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 24
    .line 25
    new-instance v4, Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "row"

    .line 29
    .line 30
    const-string v7, "ROW"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v5, v6}, Lcom/bytedance/adsdk/ugeno/yoga/vS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/bytedance/adsdk/ugeno/yoga/vS;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 36
    .line 37
    new-instance v6, Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "row_reverse"

    .line 41
    .line 42
    const-string v9, "ROW_REVERSE"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v7, v8}, Lcom/bytedance/adsdk/ugeno/yoga/vS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/bytedance/adsdk/ugeno/yoga/vS;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 48
    .line 49
    const/4 v8, 0x4

    .line 50
    new-array v8, v8, [Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 51
    .line 52
    aput-object v0, v8, v1

    .line 53
    .line 54
    aput-object v2, v8, v3

    .line 55
    .line 56
    aput-object v4, v8, v5

    .line 57
    .line 58
    aput-object v6, v8, v7

    .line 59
    .line 60
    sput-object v8, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Jcg:[Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 61
    .line 62
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
    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->HiB:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->vS:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/vS;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->sP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/vS;
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "row"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "row_reverse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "column"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "column_reverse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0

    .line 10
    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0

    .line 11
    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0

    .line 12
    :pswitch_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->sP:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6a28e907 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        -0xc62c683 -> :sswitch_1
        0x1b9da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/vS;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/vS;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Jcg:[Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/vS;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/vS;->HiB:I

    return v0
.end method
