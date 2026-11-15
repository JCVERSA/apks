.class public final Lio/appmetrica/analytics/impl/Jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ac;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/J8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj95;

    invoke-direct {v0}, Lj95;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Jd;->a:Lio/appmetrica/analytics/impl/J8;

    return-void
.end method

.method public static final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/J8;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jd;->a:Lio/appmetrica/analytics/impl/J8;

    return-object p0
.end method
