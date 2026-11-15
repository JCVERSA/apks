.class public interface abstract Lh3/s$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lh3/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh3/s$a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lh3/s$a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh3/s$a;->a:Lh3/s$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/media3/common/r;)Z
.end method

.method public abstract b(Landroidx/media3/common/r;)I
.end method

.method public abstract c(Landroidx/media3/common/r;)Lh3/s;
.end method
