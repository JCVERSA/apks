.class public enum Lcom/cloud/tmc/kernel/security/DefaultPermission;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Permission;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/security/DefaultPermission;",
        ">;",
        "Lcom/cloud/tmc/kernel/security/Permission;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/security/DefaultPermission;

.field public static final enum ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;


# instance fields
.field private authority:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/security/DefaultPermission;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultPermission;->ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/tmc/kernel/security/DefaultPermission$1;

    .line 2
    .line 3
    const-string v4, ""

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const-string v1, "ALL"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "all"

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/security/DefaultPermission$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/security/a;)V

    .line 13
    .line 14
    .line 15
    sput-object v6, Lcom/cloud/tmc/kernel/security/DefaultPermission;->ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 16
    .line 17
    invoke-static {}, Lcom/cloud/tmc/kernel/security/DefaultPermission;->$values()[Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/cloud/tmc/kernel/security/DefaultPermission;->$VALUES:[Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 22
    .line 23
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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/kernel/security/DefaultPermission;->authority:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/cloud/tmc/kernel/security/DefaultPermission;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/security/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/security/DefaultPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/security/DefaultPermission;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/security/DefaultPermission;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/security/DefaultPermission;->$VALUES:[Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/security/DefaultPermission;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultPermission;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultPermission;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
