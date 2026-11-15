.class public final Lr85$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lsm9;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Lsm9;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr85$b;->a:Lsm9;

    iput p2, p0, Lr85$b;->b:I

    iput-boolean p3, p0, Lr85$b;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lr85$b;->c:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lr85$b;->b:I

    return p0
.end method

.method public final c()Lsm9;
    .locals 0

    iget-object p0, p0, Lr85$b;->a:Lsm9;

    return-object p0
.end method
