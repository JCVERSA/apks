.class public Ll33;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcc;

.field public final b:Ldc;

.field public final c:Ldc;

.field public final d:Ldc;

.field public final e:Ldc;


# direct methods
.method public constructor <init>(Lcc;Ldc;Ldc;Ldc;Ldc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll33;->a:Lcc;

    iput-object p2, p0, Ll33;->b:Ldc;

    iput-object p3, p0, Ll33;->c:Ldc;

    iput-object p4, p0, Ll33;->d:Ldc;

    iput-object p5, p0, Ll33;->e:Ldc;

    return-void
.end method


# virtual methods
.method public a()Lcc;
    .locals 0

    iget-object p0, p0, Ll33;->a:Lcc;

    return-object p0
.end method

.method public b()Ldc;
    .locals 0

    iget-object p0, p0, Ll33;->c:Ldc;

    return-object p0
.end method

.method public c()Ldc;
    .locals 0

    iget-object p0, p0, Ll33;->d:Ldc;

    return-object p0
.end method

.method public d()Ldc;
    .locals 0

    iget-object p0, p0, Ll33;->b:Ldc;

    return-object p0
.end method

.method public e()Ldc;
    .locals 0

    iget-object p0, p0, Ll33;->e:Ldc;

    return-object p0
.end method
