.class public final enum Lcom/cloud/tmc/integration/permission/api/TmcGroup;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Group;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/permission/api/TmcGroup;",
        ">;",
        "Lcom/cloud/tmc/kernel/security/Group;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_ABOVE_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_EMPTY:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_HIGH:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_LOW:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_NONE:Lcom/cloud/tmc/integration/permission/api/TmcGroup;


# instance fields
.field private desc:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/integration/permission/api/TmcGroup;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_HIGH:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_ABOVE_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_LOW:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_NONE:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_EMPTY:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "level_high"

    .line 5
    .line 6
    const-string v3, "LEVEL_HIGH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_HIGH:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "level_abovemedium"

    .line 17
    .line 18
    const-string v3, "LEVEL_ABOVE_MEDIUM"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_ABOVE_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 24
    .line 25
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "level_medium"

    .line 29
    .line 30
    const-string v3, "LEVEL_MEDIUM"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "level_low"

    .line 41
    .line 42
    const-string v3, "LEVEL_LOW"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_LOW:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 48
    .line 49
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "level_none"

    .line 53
    .line 54
    const-string v3, "LEVEL_NONE"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_NONE:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 60
    .line 61
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "level_app_default"

    .line 65
    .line 66
    const-string v3, "LEVEL_APP_DEFAULT"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "level_empty"

    .line 77
    .line 78
    const-string v3, "LEVEL_EMPTY"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_EMPTY:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 84
    .line 85
    invoke-static {}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->$values()[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->$VALUES:[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->level:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->desc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/permission/api/TmcGroup;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/permission/api/TmcGroup;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->$VALUES:[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/tmc/integration/permission/api/TmcGroup;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public assignPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public clearPermissions()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public groupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public permissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
