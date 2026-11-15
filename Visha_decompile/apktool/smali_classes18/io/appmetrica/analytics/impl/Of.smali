.class public final Lio/appmetrica/analytics/impl/Of;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Rf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Rf;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Of;->a:Lio/appmetrica/analytics/impl/Rf;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Nf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Of;->a:Lio/appmetrica/analytics/impl/Rf;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Nf;-><init>(Lio/appmetrica/analytics/impl/Rf;)V

    return-object v0
.end method
