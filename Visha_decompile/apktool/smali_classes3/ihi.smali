.class public abstract Lihi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leri;

.field public final b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Leri;Ljava/lang/Class;Lhhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihi;->a:Leri;

    iput-object p2, p0, Lihi;->b:Ljava/lang/Class;

    return-void
.end method

.method public static b(Lehi;Leri;Ljava/lang/Class;)Lihi;
    .locals 1

    new-instance v0, Ldhi;

    invoke-direct {v0, p1, p2, p0}, Ldhi;-><init>(Leri;Ljava/lang/Class;Lehi;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lyji;Lt9i;)Lb9i;
.end method

.method public final c()Leri;
    .locals 0

    iget-object p0, p0, Lihi;->a:Leri;

    return-object p0
.end method

.method public final d()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lihi;->b:Ljava/lang/Class;

    return-object p0
.end method
