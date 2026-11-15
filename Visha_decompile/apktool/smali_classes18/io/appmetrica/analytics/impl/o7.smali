.class public final Lio/appmetrica/analytics/impl/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Mm;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/o7;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Qc;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/o7;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Qc;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/Qc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/Qc;)V

    return-void
.end method
