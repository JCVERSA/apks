.class public final Lio/appmetrica/analytics/profile/NumberAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/A6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/vb;Lio/appmetrica/analytics/impl/Lb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/A6;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/A6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    return-void
.end method


# virtual methods
.method public withValue(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/Xd;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    new-instance v5, Lio/appmetrica/analytics/impl/vb;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/vb;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/J4;

    new-instance p0, Lio/appmetrica/analytics/impl/Lb;

    new-instance v1, Lio/appmetrica/analytics/impl/D4;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/D4;-><init>(I)V

    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Lb;-><init>(Lio/appmetrica/analytics/impl/D4;)V

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    move-object v1, v7

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/Xd;-><init>(Ljava/lang/String;DLio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v7}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withValueIfUndefined(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/Xd;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    new-instance v5, Lio/appmetrica/analytics/impl/vb;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/vb;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/Bk;

    new-instance p0, Lio/appmetrica/analytics/impl/Lb;

    new-instance v1, Lio/appmetrica/analytics/impl/D4;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/D4;-><init>(I)V

    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Lb;-><init>(Lio/appmetrica/analytics/impl/D4;)V

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    move-object v1, v7

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/Xd;-><init>(Ljava/lang/String;DLio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v7}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/ri;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/vb;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/vb;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Lb;

    new-instance v4, Lio/appmetrica/analytics/impl/D4;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/D4;-><init>(I)V

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Lb;-><init>(Lio/appmetrica/analytics/impl/D4;)V

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0, v2, v3}, Lio/appmetrica/analytics/impl/ri;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method
