.class public final Lsji;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lohi;

.field public final b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lohi;Ljava/lang/Class;Lrji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsji;->a:Lohi;

    iput-object p2, p0, Lsji;->b:Ljava/lang/Class;

    return-void
.end method

.method public static b(Ljava/lang/Class;)Loji;
    .locals 2

    new-instance v0, Loji;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loji;-><init>(Ljava/lang/Class;Lrji;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lohi;
    .locals 0

    iget-object p0, p0, Lsji;->a:Lohi;

    return-object p0
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lsji;->b:Ljava/lang/Class;

    return-object p0
.end method
