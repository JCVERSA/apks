.class public final Lzfc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lagc$d;

.field public final b:Lagc$b;

.field public final c:[B

.field public final d:[Lagc$c;

.field public final e:I


# direct methods
.method public constructor <init>(Lagc$d;Lagc$b;[B[Lagc$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzfc$a;->a:Lagc$d;

    iput-object p2, p0, Lzfc$a;->b:Lagc$b;

    iput-object p3, p0, Lzfc$a;->c:[B

    iput-object p4, p0, Lzfc$a;->d:[Lagc$c;

    iput p5, p0, Lzfc$a;->e:I

    return-void
.end method
