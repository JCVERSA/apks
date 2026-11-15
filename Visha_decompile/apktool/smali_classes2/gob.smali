.class public abstract Lgob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgob$a;,
        Lgob$b;
    }
.end annotation


# static fields
.field public static final a:Lgob$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgob;->a:Lgob$a;

    return-void
.end method
