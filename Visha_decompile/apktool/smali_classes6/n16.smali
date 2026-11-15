.class public abstract Ln16;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln16$a;
    }
.end annotation


# static fields
.field public static final a:Ln16$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln16$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln16$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln16;->a:Ln16$a;

    return-void
.end method
