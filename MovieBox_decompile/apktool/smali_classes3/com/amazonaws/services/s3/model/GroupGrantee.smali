.class public final enum Lcom/amazonaws/services/s3/model/GroupGrantee;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/GroupGrantee;",
        ">;",
        "Lcom/amazonaws/services/s3/model/Grantee;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/GroupGrantee;

.field public static final enum AllUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

.field public static final enum AuthenticatedUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

.field public static final enum LogDelivery:Lcom/amazonaws/services/s3/model/GroupGrantee;


# instance fields
.field private groupUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "http://acs.amazonaws.com/groups/global/AllUsers"

    .line 5
    .line 6
    const-string v3, "AllUsers"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->AllUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 12
    .line 13
    new-instance v2, Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

    .line 17
    .line 18
    const-string v5, "AuthenticatedUsers"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/services/s3/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/amazonaws/services/s3/model/GroupGrantee;->AuthenticatedUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 24
    .line 25
    new-instance v4, Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "http://acs.amazonaws.com/groups/s3/LogDelivery"

    .line 29
    .line 30
    const-string v7, "LogDelivery"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/services/s3/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/amazonaws/services/s3/model/GroupGrantee;->LogDelivery:Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    new-array v6, v6, [Lcom/amazonaws/services/s3/model/GroupGrantee;

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
    sput-object v6, Lcom/amazonaws/services/s3/model/GroupGrantee;->$VALUES:[Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 47
    .line 48
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
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static parseGroupGrantee(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;
    .locals 5

    .line 1
    invoke-static {}, Lcom/amazonaws/services/s3/model/GroupGrantee;->values()[Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/GroupGrantee;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->$VALUES:[Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/GroupGrantee;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Group grantees have preset identifiers that cannot be modified."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "GroupGrantee ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
