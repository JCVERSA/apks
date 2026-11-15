.class public abstract Lhw2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhw2;


# direct methods
.method public constructor <init>(Lhw2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw2;->a:Lhw2;

    return-void
.end method

.method public static d(Ljava/io/File;)Lhw2;
    .locals 2

    new-instance v0, Lyn8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lyn8;-><init>(Lhw2;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract e(Ljava/lang/String;)Z
.end method
