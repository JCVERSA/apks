.class public final Lio/reactivex/internal/functions/Functions$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf2a;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lf2a;->request(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf2a;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$k;->a(Lf2a;)V

    return-void
.end method
