.class public final enum Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;",
        ">;",
        "Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;"
    }
.end annotation


# static fields
.field private static final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic HiB:[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

.field public static final enum Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

.field public static final enum TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 2
    .line 3
    const-string v1, "TRUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 12
    .line 13
    const-string v3, "FALSE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->sP:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 20
    .line 21
    new-instance v3, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 22
    .line 23
    const-string v5, "NULL"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->HiB:[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    const/16 v1, 0x80

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->EjP:Ljava/util/Map;

    .line 50
    .line 51
    invoke-static {}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->values()[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    array-length v1, v0

    .line 56
    :goto_0
    if-ge v2, v1, :cond_0

    .line 57
    .line 58
    aget-object v3, v0, v2

    .line 59
    .line 60
    sget-object v5, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->EjP:Ljava/util/Map;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    add-int/2addr v2, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->EjP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->HiB:[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    .line 8
    .line 9
    return-object v0
.end method
