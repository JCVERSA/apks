.class public abstract Ljq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqw0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq6$a;
    }
.end annotation


# static fields
.field public static final b:Ljq6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljq6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljq6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ljq6;->b:Ljq6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Q(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method
