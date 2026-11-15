.class public Lio/appmetrica/analytics/profile/GenderAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/profile/GenderAttribute$Gender;
    }
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/A6;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/A6;

    new-instance v1, Lio/appmetrica/analytics/impl/g8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/g8;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/al;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/al;-><init>()V

    const-string v3, "appmetrica_gender"

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/impl/A6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    return-void
.end method


# virtual methods
.method public withValue(Lio/appmetrica/analytics/profile/GenderAttribute$Gender;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .param p1    # Lio/appmetrica/analytics/profile/GenderAttribute$Gender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/profile/GenderAttribute$Gender;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/zm;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/f8;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    new-instance v6, Lio/appmetrica/analytics/impl/J4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/zm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v7}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withValueIfUndefined(Lio/appmetrica/analytics/profile/GenderAttribute$Gender;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .param p1    # Lio/appmetrica/analytics/profile/GenderAttribute$Gender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/profile/GenderAttribute$Gender;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/zm;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/f8;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    new-instance v6, Lio/appmetrica/analytics/impl/Bk;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    move-object v1, v7

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

    iget-object p0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/A6;->a:Lio/appmetrica/analytics/impl/Pn;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, p0}, Lio/appmetrica/analytics/impl/ri;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method
