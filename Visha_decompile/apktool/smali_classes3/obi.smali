.class public final Lobi;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Lwbi;

.field public final b:Lfri;

.field public final c:Leri;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lwbi;Lfri;Leri;Ljava/lang/Integer;Lnbi;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lobi;->a:Lwbi;

    iput-object p2, p0, Lobi;->b:Lfri;

    iput-object p3, p0, Lobi;->c:Leri;

    iput-object p4, p0, Lobi;->d:Ljava/lang/Integer;

    return-void
.end method

.method public static c()Lmbi;
    .locals 2

    new-instance v0, Lmbi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmbi;-><init>(Lnbi;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lobi;->a:Lwbi;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lobi;->c:Leri;

    return-object p0
.end method

.method public final d()Lwbi;
    .locals 0

    iget-object p0, p0, Lobi;->a:Lwbi;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lobi;->b:Lfri;

    return-object p0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lobi;->d:Ljava/lang/Integer;

    return-object p0
.end method
