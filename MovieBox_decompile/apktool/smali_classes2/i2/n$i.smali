.class abstract Li2/n$i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/n$i$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/common/f0;

.field public final c:I

.field public final d:Landroidx/media3/common/r;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Li2/n$i;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Li2/n$i;->b:Landroidx/media3/common/f0;

    .line 7
    .line 8
    iput p3, p0, Li2/n$i;->c:I

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Li2/n$i;)Z
.end method
