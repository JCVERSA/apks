.class public abstract Llk1;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lyha;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llk1$a;
    }
.end annotation


# static fields
.field public static final b:Llk1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llk1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llk1;->b:Llk1$a;

    return-void
.end method


# virtual methods
.method public abstract b()J
.end method
