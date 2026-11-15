.class public abstract Lt64;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:Lw64;


# direct methods
.method public constructor <init>(ZLw64;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Lt64;->c:Lw64;

    return-void
.end method


# virtual methods
.method public b()Lw64;
    .locals 0

    iget-object p0, p0, Lt64;->c:Lw64;

    return-object p0
.end method
