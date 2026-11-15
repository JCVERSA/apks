.class public final Lio/appmetrica/analytics/impl/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Fg;

.field public final b:Lio/appmetrica/analytics/impl/x9;

.field public final c:Lio/appmetrica/analytics/impl/F4;

.field public final d:Lio/appmetrica/analytics/impl/Le;

.field public final e:Lio/appmetrica/analytics/impl/c5;

.field public final f:Lio/appmetrica/analytics/impl/Bc;

.field public final g:Lyi5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/x9;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Le;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/hc;->a:Lio/appmetrica/analytics/impl/Fg;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/hc;->b:Lio/appmetrica/analytics/impl/x9;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/F4;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/hc;->d:Lio/appmetrica/analytics/impl/Le;

    new-instance p3, Lio/appmetrica/analytics/impl/c5;

    invoke-direct {p3, p1, p2}, Lio/appmetrica/analytics/impl/c5;-><init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/hc;->e:Lio/appmetrica/analytics/impl/c5;

    new-instance p1, Lio/appmetrica/analytics/impl/Bc;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Bc;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hc;->f:Lio/appmetrica/analytics/impl/Bc;

    new-instance p1, Lio/appmetrica/analytics/impl/gc;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/gc;-><init>(Lio/appmetrica/analytics/impl/hc;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hc;->g:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/hc;)Lio/appmetrica/analytics/impl/Fg;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->a:Lio/appmetrica/analytics/impl/Fg;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/hc;)Lio/appmetrica/analytics/impl/x9;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->b:Lio/appmetrica/analytics/impl/x9;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/impl/hc;)Lio/appmetrica/analytics/impl/F4;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/F4;

    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/impl/hc;)Lio/appmetrica/analytics/impl/Bc;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->f:Lio/appmetrica/analytics/impl/Bc;

    return-object p0
.end method

.method public static final synthetic e(Lio/appmetrica/analytics/impl/hc;)Lio/appmetrica/analytics/impl/Le;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->d:Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/J8;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->e:Lio/appmetrica/analytics/impl/c5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/c5;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/J8;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/J8;

    .line 3
    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
