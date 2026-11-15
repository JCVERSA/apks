.class public final Lio/appmetrica/analytics/impl/Oe;
.super Lio/appmetrica/analytics/impl/xd;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# static fields
.field public static final d:Lio/appmetrica/analytics/impl/Ne;

.field public static final e:Lio/appmetrica/analytics/impl/Ne;

.field public static final f:Lio/appmetrica/analytics/impl/Ne;

.field public static final g:Lio/appmetrica/analytics/impl/Ne;

.field public static final h:Lio/appmetrica/analytics/impl/Ne;

.field public static final i:Lio/appmetrica/analytics/impl/Ne;

.field public static final j:Lio/appmetrica/analytics/impl/Ne;

.field public static final k:Lio/appmetrica/analytics/impl/Ne;

.field public static final l:Lio/appmetrica/analytics/impl/Ne;

.field public static final m:Lio/appmetrica/analytics/impl/Ne;

.field public static final n:Lio/appmetrica/analytics/impl/Ne;

.field public static final o:Lio/appmetrica/analytics/impl/Ne;

.field public static final p:Lio/appmetrica/analytics/impl/Ne;

.field public static final q:Lio/appmetrica/analytics/impl/Ne;

.field public static final r:Lio/appmetrica/analytics/impl/Ne;

.field public static final s:Lio/appmetrica/analytics/impl/Ne;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->d:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->e:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "UNCHECKED_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->f:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "STATISTICS_RESTRICTED_IN_MAIN"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->g:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LAST_IDENTITY_LIGHT_SEND_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->h:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "NEXT_REPORT_SEND_ATTEMPT_NUMBER"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->i:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "NEXT_LOCATION_SEND_ATTEMPT_NUMBER"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->j:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "NEXT_STARTUP_SEND_ATTEMPT_NUMBER"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->k:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LAST_REPORT_SEND_ATTEMPT_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->l:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LAST_LOCATION_SEND_ATTEMPT_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->m:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LAST_STARTUP_SEND_ATTEMPT_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->n:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "SATELLITE_PRELOAD_INFO_CHECKED"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->o:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "SATELLITE_CLIDS_CHECKED"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->p:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "VITAL_DATA"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->q:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LAST_KOTLIN_VERSION_SEND_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->r:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "ADV_IDENTIFIERS_TRACKING_ENABLED"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Oe;->s:Lio/appmetrica/analytics/impl/Ne;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oa;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/xd;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ld;I)I
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Ld;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->k:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 18
    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->j:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 19
    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->i:Lio/appmetrica/analytics/impl/Ne;

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_1
    return p2
.end method

.method public final a(I)J
    .locals 3

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->e:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    int-to-long v1, p1

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(J)J
    .locals 1

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->h:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ld;J)J
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Ld;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->n:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->m:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 25
    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->l:Lio/appmetrica/analytics/impl/Ne;

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 27
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    :goto_1
    return-wide p2
.end method

.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->q:Lio/appmetrica/analytics/impl/Ne;

    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->q:Lio/appmetrica/analytics/impl/Ne;

    .line 11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final a(Z)Z
    .locals 1

    .line 13
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->s:Lio/appmetrica/analytics/impl/Ne;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final b(J)Lio/appmetrica/analytics/impl/Oe;
    .locals 1

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->h:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/Ld;I)Lio/appmetrica/analytics/impl/Oe;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Ld;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->k:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->j:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->i:Lio/appmetrica/analytics/impl/Ne;

    :goto_0
    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    :cond_3
    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/Ld;J)Lio/appmetrica/analytics/impl/Oe;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Ld;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->n:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->m:Lio/appmetrica/analytics/impl/Ne;

    goto :goto_0

    .line 16
    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/Oe;->l:Lio/appmetrica/analytics/impl/Ne;

    :goto_0
    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    :cond_3
    return-object p0
.end method

.method public final b(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->f:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final c(J)Lio/appmetrica/analytics/impl/Oe;
    .locals 1

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->r:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final c(Z)Lio/appmetrica/analytics/impl/Oe;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->g:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final c()Ljava/util/Set;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Oa;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final d(J)Lio/appmetrica/analytics/impl/Oe;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->e:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final d(Z)Lio/appmetrica/analytics/impl/Oe;
    .locals 1

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->f:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->g:Lio/appmetrica/analytics/impl/Ne;

    .line 8
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e(Z)V
    .locals 1

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->s:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->d:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final f()J
    .locals 3

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->r:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    new-instance p0, Lio/appmetrica/analytics/impl/Ne;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->d:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final g()Lio/appmetrica/analytics/impl/Oe;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->p:Lio/appmetrica/analytics/impl/Ne;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/Oe;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->o:Lio/appmetrica/analytics/impl/Ne;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final i()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->o:Lio/appmetrica/analytics/impl/Ne;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Oe;->p:Lio/appmetrica/analytics/impl/Ne;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
