.class public final Ll9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;

.field public final c:Loj8;

.field public final d:Loj8;

.field public final e:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;Loj8;Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll9b;->a:Loj8;

    iput-object p2, p0, Ll9b;->b:Loj8;

    iput-object p3, p0, Ll9b;->c:Loj8;

    iput-object p4, p0, Ll9b;->d:Loj8;

    iput-object p5, p0, Ll9b;->e:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;Loj8;Loj8;Loj8;)Ll9b;
    .locals 7

    new-instance v6, Ll9b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ll9b;-><init>(Loj8;Loj8;Loj8;Loj8;Loj8;)V

    return-object v6
.end method

.method public static c(Lhy0;Lhy0;Lg29;Lkib;Lcpc;)Lj9b;
    .locals 7

    new-instance v6, Lj9b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lj9b;-><init>(Lhy0;Lhy0;Lg29;Lkib;Lcpc;)V

    return-object v6
.end method


# virtual methods
.method public b()Lj9b;
    .locals 4

    iget-object v0, p0, Ll9b;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhy0;

    iget-object v1, p0, Ll9b;->b:Loj8;

    invoke-interface {v1}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhy0;

    iget-object v2, p0, Ll9b;->c:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg29;

    iget-object v3, p0, Ll9b;->d:Loj8;

    invoke-interface {v3}, Loj8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkib;

    iget-object p0, p0, Ll9b;->e:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcpc;

    invoke-static {v0, v1, v2, v3, p0}, Ll9b;->c(Lhy0;Lhy0;Lg29;Lkib;Lcpc;)Lj9b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ll9b;->b()Lj9b;

    move-result-object p0

    return-object p0
.end method
