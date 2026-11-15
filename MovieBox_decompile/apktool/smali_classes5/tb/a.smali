.class public final Ltb/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lec/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltb/a$a;
    }
.end annotation


# static fields
.field public static final a:Lec/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltb/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ltb/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltb/a;->a:Lec/a;

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


# virtual methods
.method public a(Lec/b;)V
    .locals 2

    .line 1
    sget-object v0, Ltb/a$a;->a:Ltb/a$a;

    .line 2
    .line 3
    const-class v1, Ltb/i;

    .line 4
    .line 5
    invoke-interface {p1, v1, v0}, Lec/b;->a(Ljava/lang/Class;Ldc/c;)Lec/b;

    .line 6
    .line 7
    .line 8
    const-class v1, Ltb/b;

    .line 9
    .line 10
    invoke-interface {p1, v1, v0}, Lec/b;->a(Ljava/lang/Class;Ldc/c;)Lec/b;

    .line 11
    .line 12
    .line 13
    return-void
.end method
