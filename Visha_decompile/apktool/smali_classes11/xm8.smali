.class public Lxm8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxm8;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:[J

.field public final h:Lzm8;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/regexp/a;IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/a;->g:Lxm8;

    iput-object v0, p0, Lxm8;->a:Lxm8;

    iput p2, p0, Lxm8;->b:I

    iput p3, p0, Lxm8;->c:I

    iput p4, p0, Lxm8;->d:I

    iput p5, p0, Lxm8;->e:I

    iput p6, p0, Lxm8;->f:I

    iget-object p2, p1, Lorg/mozilla/javascript/regexp/a;->e:[J

    iput-object p2, p0, Lxm8;->g:[J

    iget-object p1, p1, Lorg/mozilla/javascript/regexp/a;->f:Lzm8;

    iput-object p1, p0, Lxm8;->h:Lzm8;

    return-void
.end method
