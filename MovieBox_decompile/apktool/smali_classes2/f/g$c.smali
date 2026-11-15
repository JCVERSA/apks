.class public final Lf/g$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lf/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/g$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/g$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf/g$c;->a:Lf/g$c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
