.class public final enum Lcom/cloud/tmc/integration/model/AppInfoScene;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/model/AppInfoScene;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppInfoScene;",
        "",
        "(Ljava/lang/String;I)V",
        "isOnline",
        "",
        "()Z",
        "ONLINE",
        "DEBUG",
        "TRIAL",
        "REVIEW",
        "YUNTEST",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final Companion:Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

.field public static final enum DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final enum ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field private static final PARAM_SCENE:Ljava/lang/String; = "nbsn"

.field private static final PARAM_SCENE_VERSION:Ljava/lang/String; = "nbsv"

.field private static final PARAM_SOURCE:Ljava/lang/String; = "nbsource"

.field public static final enum REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final enum TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final enum YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 2
    .line 3
    const-string v1, "ONLINE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 10
    .line 11
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 12
    .line 13
    const-string v1, "DEBUG"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 20
    .line 21
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 22
    .line 23
    const-string v1, "TRIAL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 30
    .line 31
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 32
    .line 33
    const-string v1, "REVIEW"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 40
    .line 41
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 42
    .line 43
    const-string v1, "YUNTEST"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 50
    .line 51
    invoke-static {}, Lcom/cloud/tmc/integration/model/AppInfoScene;->$values()[Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->$VALUES:[Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 56
    .line 57
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->Companion:Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

    .line 64
    .line 65
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

.method public static final isDevSource(Landroid/os/Bundle;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->Companion:Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;->isDevSource(Landroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->$VALUES:[Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final isOnline()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
