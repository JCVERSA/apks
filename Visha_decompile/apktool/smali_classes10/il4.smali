.class public abstract Lil4;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:Lkl4;


# direct methods
.method public constructor <init>(ZLkl4;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Lil4;->c:Lkl4;

    return-void
.end method


# virtual methods
.method public b()Lkl4;
    .locals 0

    iget-object p0, p0, Lil4;->c:Lkl4;

    return-object p0
.end method
