.class public final Lio/appmetrica/analytics/impl/uc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Zf;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/vc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/vc;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/uc;->a:Lio/appmetrica/analytics/impl/vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/cg;)V
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/cg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/cg;->a()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    sget-object p1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 p1, 0x1001

    iput p1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/uc;->a:Lio/appmetrica/analytics/impl/vc;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/a6;)V

    return-void
.end method
