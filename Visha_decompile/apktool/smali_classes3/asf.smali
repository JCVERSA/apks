.class public Lasf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lztf;

.field public final b:Landroid/view/View;

.field public final c:Limh;

.field public final d:Lejf;


# direct methods
.method public constructor <init>(Landroid/view/View;Lejf;Lztf;Limh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lasf;->b:Landroid/view/View;

    iput-object p2, p0, Lasf;->d:Lejf;

    iput-object p3, p0, Lasf;->a:Lztf;

    iput-object p4, p0, Lasf;->c:Limh;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lasf;->b:Landroid/view/View;

    return-object p0
.end method

.method public final b()Lejf;
    .locals 0

    iget-object p0, p0, Lasf;->d:Lejf;

    return-object p0
.end method

.method public final c()Lztf;
    .locals 0

    iget-object p0, p0, Lasf;->a:Lztf;

    return-object p0
.end method

.method public d(Ljava/util/Set;)Lz0g;
    .locals 0

    new-instance p0, Lz0g;

    invoke-direct {p0, p1}, Lz0g;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public final e()Limh;
    .locals 0

    iget-object p0, p0, Lasf;->c:Limh;

    return-object p0
.end method
