.class public abstract Lib0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib0$a;
    }
.end annotation


# static fields
.field public static final a:Lib0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lib0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lib0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lib0;->a:Lib0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
