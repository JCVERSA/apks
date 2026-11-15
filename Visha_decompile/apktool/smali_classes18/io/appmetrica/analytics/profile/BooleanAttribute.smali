.class public Lio/appmetrica/analytics/profile/BooleanAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/A6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/A6;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/A6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    return-void
.end method


# virtual methods
.method public withValue(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/r3;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    new-instance v4, Lio/appmetrica/analytics/impl/J4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v4, p0}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lio/appmetrica/analytics/impl/r3;-><init>(Ljava/lang/String;ZLio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withValueIfUndefined(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/r3;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    new-instance v4, Lio/appmetrica/analytics/impl/Bk;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v4, p0}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lio/appmetrica/analytics/impl/r3;-><init>(Ljava/lang/String;ZLio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 5
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

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3, p0}, Lio/appmetrica/analytics/impl/ri;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method
