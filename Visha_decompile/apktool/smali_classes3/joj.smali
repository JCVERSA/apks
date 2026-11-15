.class public final Ljoj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnpj;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lnpj;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljoj;->a:Lnpj;

    iput-object p2, p0, Ljoj;->b:[Z

    iget p1, p1, Lnpj;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, Ljoj;->c:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Ljoj;->d:[Z

    return-void
.end method
