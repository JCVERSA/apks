.class public final Lmce;
.super Llbe;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcae;

    invoke-direct {v0}, Lcae;-><init>()V

    new-instance v1, Lmce;

    invoke-direct {v1, v0}, Lmce;-><init>(Lcae;)V

    return-void
.end method

.method public constructor <init>(Lcae;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Llbe;-><init>(Lcae;Lile;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcae;Lile;)V
    .locals 0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Llbe;-><init>(Lcae;Lile;)V

    return-void
.end method
