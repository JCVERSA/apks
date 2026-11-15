.class public final Lbci;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Ljci;

.field public final b:Lfri;

.field public final c:Leri;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljci;Lfri;Leri;Ljava/lang/Integer;Laci;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lbci;->a:Ljci;

    iput-object p2, p0, Lbci;->b:Lfri;

    iput-object p3, p0, Lbci;->c:Leri;

    iput-object p4, p0, Lbci;->d:Ljava/lang/Integer;

    return-void
.end method

.method public static c()Lzbi;
    .locals 2

    new-instance v0, Lzbi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzbi;-><init>(Laci;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lbci;->a:Ljci;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lbci;->c:Leri;

    return-object p0
.end method

.method public final d()Ljci;
    .locals 0

    iget-object p0, p0, Lbci;->a:Ljci;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lbci;->b:Lfri;

    return-object p0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lbci;->d:Ljava/lang/Integer;

    return-object p0
.end method
