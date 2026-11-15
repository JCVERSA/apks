.class public final enum Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/model/ObjectPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;


# instance fields
.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "private"

    .line 5
    .line 6
    const-string v3, "Private"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "public-read"

    .line 17
    .line 18
    const-string v5, "PublicRead"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 24
    .line 25
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "public-read-write"

    .line 29
    .line 30
    const-string v7, "PublicReadWrite"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 36
    .line 37
    new-instance v6, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "default"

    .line 41
    .line 42
    const-string v9, "Default"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 48
    .line 49
    new-instance v8, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const-string v10, ""

    .line 53
    .line 54
    const-string v11, "Unknown"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 60
    .line 61
    const/4 v10, 0x5

    .line 62
    new-array v10, v10, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 63
    .line 64
    aput-object v0, v10, v1

    .line 65
    .line 66
    aput-object v2, v10, v3

    .line 67
    .line 68
    aput-object v4, v10, v5

    .line 69
    .line 70
    aput-object v6, v10, v7

    .line 71
    .line 72
    aput-object v8, v10, v9

    .line 73
    .line 74
    sput-object v10, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 75
    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 3
    .line 4
    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aput-object v2, v1, v5

    .line 18
    .line 19
    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    aput-object v2, v1, v5

    .line 23
    .line 24
    :goto_0
    if-ge v3, v0, :cond_1

    .line 25
    .line 26
    aget-object v2, v1, v3

    .line 27
    .line 28
    iget-object v5, v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_0
    add-int/2addr v3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 40
    .line 41
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
