.class public final Lu/t$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lu/t;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lu/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/t$b;->a:Lu/t;

    .line 5
    .line 6
    iput p2, p0, Lu/t$b;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lu/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/t$b;->a:Lu/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lu/t$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c(Lu/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/t$b;->a:Lu/t;

    .line 2
    .line 3
    return-void
.end method
