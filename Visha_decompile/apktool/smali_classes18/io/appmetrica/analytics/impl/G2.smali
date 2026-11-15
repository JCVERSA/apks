.class public final enum Lio/appmetrica/analytics/impl/G2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lio/appmetrica/analytics/impl/G2;

.field public static final enum b:Lio/appmetrica/analytics/impl/G2;

.field public static final enum c:Lio/appmetrica/analytics/impl/G2;

.field public static final enum d:Lio/appmetrica/analytics/impl/G2;

.field public static final enum e:Lio/appmetrica/analytics/impl/G2;

.field public static final synthetic f:[Lio/appmetrica/analytics/impl/G2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/impl/G2;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/G2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/appmetrica/analytics/impl/G2;->a:Lio/appmetrica/analytics/impl/G2;

    new-instance v1, Lio/appmetrica/analytics/impl/G2;

    const-string v2, "WORKING_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/G2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/appmetrica/analytics/impl/G2;->b:Lio/appmetrica/analytics/impl/G2;

    new-instance v2, Lio/appmetrica/analytics/impl/G2;

    const-string v3, "FREQUENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/G2;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/appmetrica/analytics/impl/G2;->c:Lio/appmetrica/analytics/impl/G2;

    new-instance v3, Lio/appmetrica/analytics/impl/G2;

    const-string v4, "RARE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/G2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/appmetrica/analytics/impl/G2;->d:Lio/appmetrica/analytics/impl/G2;

    new-instance v4, Lio/appmetrica/analytics/impl/G2;

    const-string v5, "RESTRICTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/appmetrica/analytics/impl/G2;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/appmetrica/analytics/impl/G2;->e:Lio/appmetrica/analytics/impl/G2;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/appmetrica/analytics/impl/G2;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/G2;->f:[Lio/appmetrica/analytics/impl/G2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/impl/G2;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/impl/G2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/G2;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/impl/G2;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/G2;->f:[Lio/appmetrica/analytics/impl/G2;

    invoke-virtual {v0}, [Lio/appmetrica/analytics/impl/G2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/G2;

    return-object v0
.end method
