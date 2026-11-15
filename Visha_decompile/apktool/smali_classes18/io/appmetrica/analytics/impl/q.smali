.class public final enum Lio/appmetrica/analytics/impl/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lio/appmetrica/analytics/impl/q;

.field public static final enum b:Lio/appmetrica/analytics/impl/q;

.field public static final synthetic c:[Lio/appmetrica/analytics/impl/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/q;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/q;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lio/appmetrica/analytics/impl/q;

    const-string v2, "RESUMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/appmetrica/analytics/impl/q;->a:Lio/appmetrica/analytics/impl/q;

    new-instance v2, Lio/appmetrica/analytics/impl/q;

    const-string v3, "PAUSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/q;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/appmetrica/analytics/impl/q;->b:Lio/appmetrica/analytics/impl/q;

    filled-new-array {v0, v1, v2}, [Lio/appmetrica/analytics/impl/q;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/q;->c:[Lio/appmetrica/analytics/impl/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/impl/q;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/impl/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/q;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/impl/q;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/q;->c:[Lio/appmetrica/analytics/impl/q;

    invoke-virtual {v0}, [Lio/appmetrica/analytics/impl/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/q;

    return-object v0
.end method
