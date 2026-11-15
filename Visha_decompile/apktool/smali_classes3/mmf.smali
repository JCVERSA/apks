.class public final Lmmf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lokf;

.field public b:Lgnf;

.field public c:Lprh;

.field public d:Lmnf;

.field public e:Lhoh;


# direct methods
.method public synthetic constructor <init>(Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Llkf;
    .locals 7

    iget-object v0, p0, Lmmf;->a:Lokf;

    const-class v1, Lokf;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lmmf;->b:Lgnf;

    const-class v1, Lgnf;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lmmf;->c:Lprh;

    if-nez v0, :cond_0

    new-instance v0, Lprh;

    invoke-direct {v0}, Lprh;-><init>()V

    iput-object v0, p0, Lmmf;->c:Lprh;

    :cond_0
    iget-object v0, p0, Lmmf;->d:Lmnf;

    if-nez v0, :cond_1

    new-instance v0, Lmnf;

    invoke-direct {v0}, Lmnf;-><init>()V

    iput-object v0, p0, Lmmf;->d:Lmnf;

    :cond_1
    iget-object v0, p0, Lmmf;->e:Lhoh;

    if-nez v0, :cond_2

    new-instance v0, Lhoh;

    invoke-direct {v0}, Lhoh;-><init>()V

    iput-object v0, p0, Lmmf;->e:Lhoh;

    :cond_2
    new-instance v0, Lzlf;

    iget-object v2, p0, Lmmf;->a:Lokf;

    iget-object v3, p0, Lmmf;->b:Lgnf;

    iget-object v4, p0, Lmmf;->c:Lprh;

    iget-object v5, p0, Lmmf;->d:Lmnf;

    iget-object v6, p0, Lmmf;->e:Lhoh;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lzlf;-><init>(Lokf;Lgnf;Lprh;Lmnf;Lhoh;)V

    return-object v0
.end method

.method public final b(Lokf;)Lmmf;
    .locals 0

    iput-object p1, p0, Lmmf;->a:Lokf;

    return-object p0
.end method

.method public final c(Lgnf;)Lmmf;
    .locals 0

    iput-object p1, p0, Lmmf;->b:Lgnf;

    return-object p0
.end method
