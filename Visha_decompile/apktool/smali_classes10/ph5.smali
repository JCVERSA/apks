.class public abstract Lph5;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:Lrh5;


# direct methods
.method public constructor <init>(ZLrh5;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Lph5;->c:Lrh5;

    return-void
.end method


# virtual methods
.method public b()Lrh5;
    .locals 0

    iget-object p0, p0, Lph5;->c:Lrh5;

    return-object p0
.end method
