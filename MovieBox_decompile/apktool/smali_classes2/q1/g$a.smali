.class public final Lq1/g$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lq1/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq1/g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq1/g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq1/g$a;->a:Lq1/g$a;

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
