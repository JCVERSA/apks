.class public final Lpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsu4;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfo;

    invoke-direct {v0}, Lfo;-><init>()V

    const-class v1, Ld82$g;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v0, Lgo;

    invoke-direct {v0}, Lgo;-><init>()V

    const-class v1, Ld82$h;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v0, Lho;

    invoke-direct {v0}, Lho;-><init>()V

    const-class v1, Ld82$k;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-instance v0, Lio;

    invoke-direct {v0}, Lio;-><init>()V

    const-class v1, Ld82$m;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v0, Ljo;

    invoke-direct {v0}, Ljo;-><init>()V

    const-class v1, Ld82$e;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v0, Lko;

    invoke-direct {v0}, Lko;-><init>()V

    const-class v1, Ld82$c;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    const-class v1, Ld82$a;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lpo;->a:Ljava/util/Map;

    new-instance v0, Lmo;

    invoke-direct {v0}, Lmo;-><init>()V

    const-class v1, Ld82$i;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Lno;

    invoke-direct {v1}, Lno;-><init>()V

    const-class v2, Ld82$l;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v2, Loo;

    invoke-direct {v2}, Loo;-><init>()V

    const-class v3, Ld82$f;

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lpo;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic c(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->q(Ld82;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->u(Ld82;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Ld82;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lpo;->o(Ld82;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->p(Ld82;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->t(Ld82;)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->r(Ld82;)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Ld82;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lpo;->m(Ld82;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->s(Ld82;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Ld82;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lpo;->n(Ld82;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ld82;)I
    .locals 0

    invoke-static {p0}, Lpo;->v(Ld82;)I

    move-result p0

    return p0
.end method

.method public static final m(Ld82;)Ljava/util/List;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$i;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deletePlayListElements(Ld82$i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ld82;)Ljava/util/List;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$l;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deleteSystemMediaItems(Ld82$l;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Ld82;)Ljava/util/List;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$f;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deletePlayHistoryElements(Ld82$f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$g;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deletePlayList(Ld82$g;)I

    move-result p0

    return p0
.end method

.method public static final q(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$h;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deletePlayListElement(Ld82$h;)I

    move-result p0

    return p0
.end method

.method public static final r(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$k;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deleteSystemMediaItem(Ld82$k;)I

    move-result p0

    return p0
.end method

.method public static final s(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deleteAudioMV(Ld82$m;)I

    move-result p0

    return p0
.end method

.method public static final t(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$e;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deletePlayHistoryElement(Ld82$e;)I

    move-result p0

    return p0
.end method

.method public static final u(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$c;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deletePlayFrequentlyElement(Ld82$c;)I

    move-result p0

    return p0
.end method

.method public static final v(Ld82;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Ld82$a;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->deleteAudioConvertedElement(Ld82$a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lg82;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpo;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lg82;->a()Ld82;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lg82;->a()Ld82;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg82;->a()Ld82;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled action type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioDeleteEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public b(Lg82;)Ljava/util/List;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpo;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lg82;->a()Ld82;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lg82;->a()Ld82;

    move-result-object v0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lg82;->a()Ld82;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled BatchAction type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioDeleteEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method
