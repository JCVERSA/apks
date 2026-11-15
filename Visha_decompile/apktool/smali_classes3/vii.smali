.class public abstract Lvii;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leri;

.field public final b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Leri;Ljava/lang/Class;Luii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvii;->a:Leri;

    iput-object p2, p0, Lvii;->b:Ljava/lang/Class;

    return-void
.end method

.method public static b(Ltii;Leri;Ljava/lang/Class;)Lvii;
    .locals 1

    new-instance v0, Lsii;

    invoke-direct {v0, p1, p2, p0}, Lsii;-><init>(Leri;Ljava/lang/Class;Ltii;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lyji;)Lp9i;
.end method

.method public final c()Leri;
    .locals 0

    iget-object p0, p0, Lvii;->a:Leri;

    return-object p0
.end method

.method public final d()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lvii;->b:Ljava/lang/Class;

    return-object p0
.end method
