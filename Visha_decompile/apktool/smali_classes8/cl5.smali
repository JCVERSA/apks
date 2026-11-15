.class public abstract Lcl5;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/InputStream;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcl5;->b:Ljava/io/InputStream;

    iput p2, p0, Lcl5;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcl5;->c:I

    return p0
.end method

.method public d(Z)V
    .locals 1

    iget-object p0, p0, Lcl5;->b:Ljava/io/InputStream;

    instance-of v0, p0, Lhz4;

    if-eqz v0, :cond_0

    check-cast p0, Lhz4;

    invoke-virtual {p0, p1}, Lhz4;->g(Z)V

    :cond_0
    return-void
.end method
