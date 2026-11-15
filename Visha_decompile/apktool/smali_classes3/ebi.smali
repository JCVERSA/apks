.class public final Lebi;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Llbi;

.field public final b:Lfri;

.field public final c:Leri;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Llbi;Lfri;Leri;Ljava/lang/Integer;Ldbi;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lebi;->a:Llbi;

    iput-object p2, p0, Lebi;->b:Lfri;

    iput-object p3, p0, Lebi;->c:Leri;

    iput-object p4, p0, Lebi;->d:Ljava/lang/Integer;

    return-void
.end method

.method public static c()Lcbi;
    .locals 2

    new-instance v0, Lcbi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcbi;-><init>(Ldbi;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lebi;->a:Llbi;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lebi;->c:Leri;

    return-object p0
.end method

.method public final d()Llbi;
    .locals 0

    iget-object p0, p0, Lebi;->a:Llbi;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lebi;->b:Lfri;

    return-object p0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lebi;->d:Ljava/lang/Integer;

    return-object p0
.end method
