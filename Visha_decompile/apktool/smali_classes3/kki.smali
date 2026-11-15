.class public final Lkki;
.super Lnli;
.source "SourceFile"


# instance fields
.field public final a:Lski;

.field public final b:Lfri;

.field public final c:Leri;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lski;Lfri;Leri;Ljava/lang/Integer;Lhki;)V
    .locals 0

    invoke-direct {p0}, Lnli;-><init>()V

    iput-object p1, p0, Lkki;->a:Lski;

    iput-object p2, p0, Lkki;->b:Lfri;

    iput-object p3, p0, Lkki;->c:Leri;

    iput-object p4, p0, Lkki;->d:Ljava/lang/Integer;

    return-void
.end method

.method public static c()Lgki;
    .locals 2

    new-instance v0, Lgki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgki;-><init>(Lhki;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lkki;->a:Lski;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lkki;->c:Leri;

    return-object p0
.end method

.method public final d()Lski;
    .locals 0

    iget-object p0, p0, Lkki;->a:Lski;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lkki;->b:Lfri;

    return-object p0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkki;->d:Ljava/lang/Integer;

    return-object p0
.end method
