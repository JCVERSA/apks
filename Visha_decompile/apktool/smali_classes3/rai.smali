.class public final Lrai;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Lbbi;

.field public final b:Lfri;

.field public final c:Lfri;

.field public final d:Leri;

.field public final e:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lbbi;Lfri;Lfri;Leri;Ljava/lang/Integer;Lqai;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lrai;->a:Lbbi;

    iput-object p2, p0, Lrai;->b:Lfri;

    iput-object p3, p0, Lrai;->c:Lfri;

    iput-object p4, p0, Lrai;->d:Leri;

    iput-object p5, p0, Lrai;->e:Ljava/lang/Integer;

    return-void
.end method

.method public static c()Lpai;
    .locals 2

    new-instance v0, Lpai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpai;-><init>(Lqai;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lrai;->a:Lbbi;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lrai;->d:Leri;

    return-object p0
.end method

.method public final d()Lbbi;
    .locals 0

    iget-object p0, p0, Lrai;->a:Lbbi;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lrai;->b:Lfri;

    return-object p0
.end method

.method public final f()Lfri;
    .locals 0

    iget-object p0, p0, Lrai;->c:Lfri;

    return-object p0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lrai;->e:Ljava/lang/Integer;

    return-object p0
.end method
