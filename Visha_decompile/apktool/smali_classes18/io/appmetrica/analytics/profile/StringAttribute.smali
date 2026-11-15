.class public Lio/appmetrica/analytics/profile/StringAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/in;

.field private final b:Lio/appmetrica/analytics/impl/A6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/ym;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/A6;

    invoke-direct {v0, p1, p3, p4}, Lio/appmetrica/analytics/impl/A6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/StringAttribute;->b:Lio/appmetrica/analytics/impl/A6;

    iput-object p2, p0, Lio/appmetrica/analytics/profile/StringAttribute;->a:Lio/appmetrica/analytics/impl/in;

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/zm;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/StringAttribute;->b:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/profile/StringAttribute;->a:Lio/appmetrica/analytics/impl/in;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    new-instance v6, Lio/appmetrica/analytics/impl/J4;

    iget-object p0, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/zm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v7}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withValueIfUndefined(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/zm;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/StringAttribute;->b:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/profile/StringAttribute;->a:Lio/appmetrica/analytics/impl/in;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    new-instance v6, Lio/appmetrica/analytics/impl/Bk;

    iget-object p0, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/zm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v7}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

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

    iget-object p0, p0, Lio/appmetrica/analytics/profile/StringAttribute;->b:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, p0}, Lio/appmetrica/analytics/impl/ri;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method
