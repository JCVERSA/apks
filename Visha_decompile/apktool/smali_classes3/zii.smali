.class public abstract Lzii;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lyii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzii;->a:Ljava/lang/Class;

    iput-object p2, p0, Lzii;->b:Ljava/lang/Class;

    return-void
.end method

.method public static b(Lxii;Ljava/lang/Class;Ljava/lang/Class;)Lzii;
    .locals 1

    new-instance v0, Lwii;

    invoke-direct {v0, p1, p2, p0}, Lwii;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lxii;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lp9i;)Lyji;
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lzii;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final d()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lzii;->b:Ljava/lang/Class;

    return-object p0
.end method
