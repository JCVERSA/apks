.class public final Lgt/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgt/b$a;
    }
.end annotation


# static fields
.field public static final b:Lgt/b$a;


# instance fields
.field private final a:Lfb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgt/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgt/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgt/b;->b:Lgt/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgt/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lgt/a;-><init>(Lgt/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgt/b;->a:Lfb/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
