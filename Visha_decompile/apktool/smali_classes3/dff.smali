.class public final Ldff;
.super Leff;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Leff;-><init>()V

    iput-object p1, p0, Ldff;->c:Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/Object;)Ldff;
    .locals 1

    new-instance v0, Ldff;

    invoke-direct {v0, p0}, Ldff;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Ldff;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method
