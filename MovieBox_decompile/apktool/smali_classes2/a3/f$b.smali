.class public final La3/f$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, La3/f$b;->a:I

    .line 4
    iput-wide p2, p0, La3/f$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLa3/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, La3/f$b;-><init>(IJ)V

    return-void
.end method
