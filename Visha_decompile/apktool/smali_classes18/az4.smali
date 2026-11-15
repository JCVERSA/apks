.class public final Laz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldz4;


# instance fields
.field public final b:Lf17;


# direct methods
.method public constructor <init>(Lf17;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz4;->b:Lf17;

    return-void
.end method


# virtual methods
.method public b()Lf17;
    .locals 0

    iget-object p0, p0, Laz4;->b:Lf17;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
