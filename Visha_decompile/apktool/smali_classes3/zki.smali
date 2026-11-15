.class public final Lzki;
.super Lnli;
.source "SourceFile"


# instance fields
.field public final a:Ljli;

.field public final b:Lfri;

.field public final c:Leri;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljli;Lfri;Leri;Ljava/lang/Integer;Lyki;)V
    .locals 0

    invoke-direct {p0}, Lnli;-><init>()V

    iput-object p1, p0, Lzki;->a:Ljli;

    iput-object p2, p0, Lzki;->b:Lfri;

    iput-object p3, p0, Lzki;->c:Leri;

    iput-object p4, p0, Lzki;->d:Ljava/lang/Integer;

    return-void
.end method

.method public static c()Lxki;
    .locals 2

    new-instance v0, Lxki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxki;-><init>(Lyki;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lzki;->a:Ljli;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lzki;->c:Leri;

    return-object p0
.end method

.method public final d()Ljli;
    .locals 0

    iget-object p0, p0, Lzki;->a:Ljli;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lzki;->b:Lfri;

    return-object p0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lzki;->d:Ljava/lang/Integer;

    return-object p0
.end method
