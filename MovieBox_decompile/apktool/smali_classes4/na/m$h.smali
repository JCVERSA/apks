.class abstract Lna/m$h;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna/m$h$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lv9/w;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/p1;


# direct methods
.method public constructor <init>(ILv9/w;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lna/m$h;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lna/m$h;->b:Lv9/w;

    .line 7
    .line 8
    iput p3, p0, Lna/m$h;->c:I

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lv9/w;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lna/m$h;->d:Lcom/google/android/exoplayer2/p1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lna/m$h;)Z
.end method
