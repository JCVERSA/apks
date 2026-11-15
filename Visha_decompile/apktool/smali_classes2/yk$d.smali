.class public final Lyk$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:[Lvua;

.field public b:Lcom/google/android/exoplayer2/k;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lvua;

    iput-object p1, p0, Lyk$d;->a:[Lvua;

    const/4 p1, 0x0

    iput p1, p0, Lyk$d;->d:I

    return-void
.end method
