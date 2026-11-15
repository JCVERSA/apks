.class public abstract Lz43;
.super Ldj;
.source "SourceFile"


# instance fields
.field public final c:Lu43;


# direct methods
.method public constructor <init>(ZLu43;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lz43;->c:Lu43;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'parameters\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lu43;
    .locals 0

    iget-object p0, p0, Lz43;->c:Lu43;

    return-object p0
.end method
