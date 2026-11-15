.class public final synthetic Lfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Sd;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Ak;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Ak;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa;->a:Lio/appmetrica/analytics/impl/Ak;

    iput-object p2, p0, Lfa;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfa;->a:Lio/appmetrica/analytics/impl/Ak;

    iget-object p0, p0, Lfa;->b:Landroid/app/Activity;

    check-cast p1, Lio/appmetrica/analytics/impl/nc;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/Ak;->b(Landroid/app/Activity;Lio/appmetrica/analytics/impl/nc;)V

    return-void
.end method
