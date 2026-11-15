.class public final Lacb$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzbb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lacb$d;->c()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/lang/Double;

    return p0
.end method

.method public c()Ljava/lang/Double;
    .locals 2

    iget-wide v0, p0, Lacb$d;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
