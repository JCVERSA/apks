.class public final Lk2/p$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk2/p$b;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lk2/p$b;->c:I

    .line 5
    iput p3, p0, Lk2/p$b;->b:I

    .line 6
    iput p4, p0, Lk2/p$b;->d:I

    .line 7
    iput-wide p5, p0, Lk2/p$b;->e:J

    .line 8
    iput p7, p0, Lk2/p$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIJILk2/p$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lk2/p$b;-><init>(Ljava/lang/String;IIIJI)V

    return-void
.end method
